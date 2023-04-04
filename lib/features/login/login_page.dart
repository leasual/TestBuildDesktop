import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/login/bezier_clipper.dart';
import 'package:deconz_app/features/login/login_form.dart';
import 'package:deconz_app/features/login/login_viewmodel.dart';
import 'package:deconz_app/utils/async_value_extension.dart';
import 'package:deconz_app/utils/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/page_header.dart';
import '../../routing/app_router.dart';
import '../../utils/logger.dart';

//animator text https://github.com/andrewpmoore/widget_and_text_animator/blob/main/example/lib/samples.dart
//tabbar https://github.com/thisiskhan/thebrioflashynavbar?ref=flutterawesome.com
//https://flutterawesome.com/tag/tabbar/
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool stopDiscover = false;
  //FIXED
  //remember, can't put these parameters to build method, it will let keyboard pop down, when you focus on text field
  final loginFormKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController serverIPController = TextEditingController();

  void discoverGateway() async {
    final viewModel = ref.read(loginViewModelProvider.notifier);
    final result = await viewModel.discoverGateway();
    logger.d('gateway= $result');
    if (result.isEmpty) {
      await Future.delayed(const Duration(seconds: 2));
      discoverGateway();
    } else {
      serverIPController.text = result[0].internalipaddress;
      setState(() {
        stopDiscover = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    userNameController.text = 'delight';
    discoverGateway();
  }

  @override
  void dispose() {
    stopDiscover = true;
    super.dispose();
  }

  @override
  void deactivate() {
    logger.d('deactivate');
    ref.read(loginViewModelProvider.notifier).cancelTask();
    super.deactivate();
  }

  void goToMain(Object? key) {
    if (key != null && key is String) {
      apikey = key;
      stopDiscover = true;
      ref.read(sharedPreferencesProvider).setString('apiKey', key);
      ref.read(sharedPreferencesProvider).setString('hostName', hostName);
      context.goNamed(AppRoute.main.name);
    } else {
      SmartDialog.showToast('Server error.');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ref.listen<AsyncValue>(
        loginViewModelProvider,
        (_, state) => state.detailWithResult(
            message: 'User name or password error.',
            result: (data) => {logger.d("data= $data"), goToMain(data)}));

    final viewModel = ref.read(loginViewModelProvider.notifier);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          color: yellowColor,
          child: SafeArea(
            bottom: false,
            child: Container(
              color: Colors.white,
              child: isDesktop
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: double.infinity,
                          color: yellowColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height / 2,
                                color: yellowColor,
                                child: logoWidget(size),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: LoginForm(
                                loginFromKey: loginFormKey,
                                userNameController: userNameController,
                                passwordController: passwordController,
                                serverIPController: serverIPController,
                                showDiscover: !stopDiscover,
                                login: () => viewModel.login(
                                    userNameController.text,
                                    passwordController.text,
                                    serverIPController.text),
                              ),
                            ),
                          ],
                        ))
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          logoWidget(size),
                          LoginForm(
                            loginFromKey: loginFormKey,
                            userNameController: userNameController,
                            passwordController: passwordController,
                            serverIPController: serverIPController,
                            showDiscover: !stopDiscover,
                            login: () => viewModel.login(
                                userNameController.text,
                                passwordController.text,
                                serverIPController.text),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ));
  }

  Widget logoWidget(Size size) {
    return Container(
      width: isDesktop ? size.width / 2 : double.infinity,
      color: isDesktop ? yellowColor : Colors.white,
      child: isDesktop
          ? const PageHeader()
          : ClipPath(
              clipper: BezierClipper(0),
              child: const PageHeader(),
            ),
    );
  }
}
