import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../common_widgets/custom_input_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm(
      {Key? key,
        required this.loginFromKey,
      required this.userNameController,
      required this.passwordController,
      required this.serverIPController,
      required this.showDiscover,
      required this.login})
      : super(key: key);
  Function() login;
  final bool showDiscover;
  final GlobalKey<FormState> loginFromKey;
  final TextEditingController serverIPController;
  final TextEditingController userNameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: loginFromKey,
      child: Column(
        children: [
          CustomInputField(
              action: TextInputAction.next,
              controller: userNameController,
              readonly: true,
              labelText: '',
              hintText: 'UserName',
              validator: (textValue) {
                if (textValue == null || textValue.isEmpty) {
                  return 'Email is required!';
                }
                // if(!EmailValidator.validate(textValue)) {
                //   return 'Please enter a valid email';
                // }
                return null;
              }),
          CustomInputField(
            action: TextInputAction.next,
            controller: passwordController,
            labelText: '',
            hintText: 'Password',
            obscureText: true,
            suffixIcon: true,
            validator: (textValue) {
              if (textValue == null || textValue.isEmpty) {
                return 'Password is required!';
              }
              return null;
            },
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CustomInputField(
                action: TextInputAction.done,
                controller: serverIPController,
                labelText: '',
                hintText: 'Server',
                validator: (textValue) {
                  if (textValue == null || textValue.isEmpty) {
                    return 'Server is required!';
                  }
                  return null;
                },
              ),
              Visibility(
                visible: showDiscover,
                child: Align(alignment: Alignment.centerRight, child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Lottie.asset('assets/images/wifi_radar.json', width: 60, height: 60),
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Sign in",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoSerif',
                  )),
              IconButton(
                  iconSize: 90,
                  onPressed: () => {
                        if (loginFromKey.currentState!.validate())
                          {
                            login()
                          }
                      },
                  icon: const Icon(
                    EvaIcons.arrowCircleRight,
                    size: 90,
                  )),
            ],
          ),
          Container(
            width: size.width * 0.80,
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => {},
              child: const Text(
                'Forget password?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
