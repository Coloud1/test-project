import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';

class SettingsMainScreen extends StatelessWidget {
  const SettingsMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text('Settings'),
          ElevatedButton(
            onPressed: () => _navigateToAccountProviders(context),
            child: const Text('Account Providers'),
          ),
        ],
      ),
    );
  }

  void _navigateToAccountProviders(BuildContext context) {
    context.pushNamed(AppRoute.settingsAccountProviders.name);
  }
}
