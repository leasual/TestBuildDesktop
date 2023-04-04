
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/login/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//android https://github.com/flutter/samples/blob/main/android_splash_screen/android/app/src/main/res/layout/main_activity_2.xml
//ios https://docs.flutter.dev/development/platform-integration/ios/splash-screen
//https://flutterawesome.com/a-flutter-splash-screen-for-food-delivery-app/
//https://flutterawesome.com/a-tesla-concept-mobile-app-project-created-in-flutter-using-provider/
//https://github.com/thisiskhan/thebrioflashynavbar?ref=flutterawesome.com

class SplashPage extends ConsumerWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: yellowColor
          ),
          child: Image.asset('assets/images/login_top.webp'),
        )
    );
  }
}
