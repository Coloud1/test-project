import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class OnboardingMainScreen extends StatefulWidget {
  const OnboardingMainScreen({super.key});

  @override
  State<OnboardingMainScreen> createState() => _OnboardingMainScreenState();
}

class _OnboardingMainScreenState extends State<OnboardingMainScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(
      appBar: CustomAppBar(title: 'Onboarding'),
      body: Column(
        children: [
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
