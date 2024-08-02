import 'package:flutter/material.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.homeAppBarTitle),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(context.tr.homeLogOutButtonLabel),
          ),
        ],
      ),
    );
  }
}
