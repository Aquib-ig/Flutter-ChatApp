import 'package:flutter/material.dart';
import 'package:login_app/style/app_color.dart';

class EditTextField extends StatelessWidget {
  final String title;
  const EditTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: AppColor.field,
          hintText: title,
          label: Text(title),
          labelStyle: const TextStyle(
            color: Colors.white,
          )),
    );
  }
}
