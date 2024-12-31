import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final pages = [
    HomePage(),
    const Center(child: Text("Favorite")),
    const Center(child: Text("Message")),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/home.svg",
                height: 24,
                width: 24,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/love.svg",
                height: 24,
                width: 24,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/message.svg",
                height: 24,
                width: 24,
              ),
              label: "Message"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/user.svg",
                height: 24,
                width: 24,
              ),
              label: "User"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
