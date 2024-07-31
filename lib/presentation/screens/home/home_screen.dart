import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: 'Home'),
      body: Column(
        children: [
          // ElevatedButton(
          //   onPressed: () => GetIt.I.get<SessionService>().close(),
          //   child: Text('Log out'),
          // ),
        ],
      ),
    );
  }
}
