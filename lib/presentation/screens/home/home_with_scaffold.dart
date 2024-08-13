import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class HomeWithScaffold extends StatelessWidget {
  final StatefulNavigationShell shell;

  const HomeWithScaffold({
    required this.shell,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(
        title: _getTitleByIndex(context, index: shell.currentIndex),
      ),
      safeArea: (top: true, bottom: true),
      body: shell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: shell.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Some screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: shell.goBranch,
      ),
    );
  }

  String _getTitleByIndex(
    BuildContext context, {
    required int index,
  }) {
    return switch (index) {
      0 => context.tr.homeAppBarTitle,
      1 => 'Some screen',
      2 => 'Settings',
      int() => throw UnimplementedError(),
    };
  }
}
