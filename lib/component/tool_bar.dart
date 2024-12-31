import 'package:flutter/material.dart';
import 'package:login_app/style/app_color.dart';
import 'package:login_app/style/app_text.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;

  const ToolBar({super.key, required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppText.header1,
      ),
      actions: action,
      backgroundColor: AppColor.background,
      elevation: 3,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
