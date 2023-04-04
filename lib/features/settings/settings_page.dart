import 'package:deconz_app/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../utils/shared_preferences.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  void logout() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.setString('apiKey', '');
    context.goNamed(AppRoute.login.name);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Center(
        child: SizedBox(
          height: 48,
          width: size.width / 4,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.black),
            onPressed: logout,
            child: const Text(
              'Logout',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    ));
  }
}
