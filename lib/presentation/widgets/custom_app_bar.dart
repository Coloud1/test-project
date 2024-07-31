import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    this.title,
    this.leading,
    this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title ?? '') : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
