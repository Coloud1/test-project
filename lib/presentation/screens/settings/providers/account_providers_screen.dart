import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class AccountProvidersScreen extends StatelessWidget {
  const AccountProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: 'Account Providers'),
      body: Column(),
    );
  }
}
