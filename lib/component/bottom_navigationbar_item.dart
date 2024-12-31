import 'package:flutter/material.dart';
import 'package:login_app/pages/main_page.dart';

class BottomNavigationbarItem extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;
  final Menus current;
  final Menus name;
  const BottomNavigationbarItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: 28,
      color: current == name ? Colors.black : Colors.grey,
    );
  }
}
