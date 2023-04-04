import 'package:deconz_app/features/device/add_device_page.dart';
import 'package:deconz_app/features/login/login_page.dart';
import 'package:deconz_app/features/group/add_group_page.dart';
import 'package:deconz_app/features/schedule/add_schedule_page.dart';
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:deconz_app/utils/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';
import '../features/main/main_page.dart';
import '../features/splash/splash_page.dart';
import '../utils/logger.dart';

enum AppRoute { splash, login, main, group, addGroup, device, addDevice, schedule, addSchedule, settings }

final goRouterProvider = Provider<GoRouter>((ref) => GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: '/',
          name: AppRoute.splash.name,
          builder: (context, state) {
            return const SplashPage();
          },
          routes: [
            GoRoute(
                path: AppRoute.login.name,
                name: AppRoute.login.name,
                builder: (context, state) {
                  return const LoginPage();
                  // return ScreenTypeLayout.builder(
                  //   mobile: (context) => const SplashPage(),
                  //   tablet: (context) => const SplashPage(),
                  //   desktop: (context) => const SplashPage(),
                  // );
                }),
            GoRoute(
                path: AppRoute.main.name,
                name: AppRoute.main.name,
                builder: (context, state) {
                  return const MainPage();
                },
                routes: [
                  GoRoute(
                      path: AppRoute.addGroup.name,
                      name: AppRoute.addGroup.name,
                      builder: (context, state) {
                        return const AddGroupPage();
                      }),
                  GoRoute(
                      path: AppRoute.addDevice.name,
                      name: AppRoute.addDevice.name,
                      builder: (context, state) {
                        return const AddDevicePage();
                      }),
                  GoRoute(
                      path: AppRoute.addSchedule.name,
                      name: AppRoute.addSchedule.name,
                      builder: (context, state) {
                        return const AddSchedulePage();
                      }),
                ]),
          ]),
    ],
    redirect: (context, state) {
      String? key = ref.read(sharedPreferencesProvider).getString('apiKey');
      if (key != null && key.isNotEmpty && state.location == '/') {
        //init api hostName and apiKey
        apikey = key;
        hostName =
            ref.read(sharedPreferencesProvider).getString('hostName') ?? '';
        // logger.d('apiKey= $apikey hostName= $hostName');
        //must use this to redirect, GoRouter.of(context).namedLocation will occur error.
        return state.namedLocation(AppRoute.main.name);
      } else if(state.location == '/') {
        return state.namedLocation(AppRoute.login.name);
      }
    }));
