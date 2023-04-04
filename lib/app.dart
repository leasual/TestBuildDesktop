import 'dart:ui';

import 'package:deconz_app/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class App extends ConsumerStatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      //https://github.com/flutter/flutter/issues/119386 fix issue when using tabbar can't swipe on desktop
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          ...PointerDeviceKind.values
        }
      ),
      theme: ThemeData(
        primaryColor: const Color(0xff3dcd58),
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Color(0xff3dcd58)),
      ),
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => 'Deconz',
      builder: FlutterSmartDialog.init(),
    );
  }
}
