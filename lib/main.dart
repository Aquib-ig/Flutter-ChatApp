import 'package:flutter/material.dart';
import 'package:login_app/pages/main_page.dart';
import 'package:login_app/style/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Merriweather",
        scaffoldBackgroundColor: AppColor.background,
        brightness: Brightness.dark,
      ),

      home: const MainPage(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const MainPage(),
      // "/home": (context) => const HomePage(),
      // },
    );
  }
}
