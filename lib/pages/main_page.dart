import 'package:flutter/material.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/profile_page.dart';
import 'package:login_app/style/app_color.dart';

import '../component/bottom_navigationbar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  final pages = [
    HomePage(),
    const Center(child: Text("Favorite")),
    const Center(child: Text("Add")),
    const Center(child: Text("Message")),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],

      bottomNavigationBar: MyBottomNavigation(
        currentindex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/svg/home.svg",
      //           height: 24,
      //           width: 24,
      //         ),
      //         label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/svg/love.svg",
      //           height: 24,
      //           width: 24,
      //         ),
      //         label: "Favorite"),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/svg/message.svg",
      //           height: 24,
      //           width: 24,
      //         ),
      //         label: "Message"),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/svg/user.svg",
      //           height: 24,
      //           width: 24,
      //         ),
      //         label: "User"),
      //   ],
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Colors.blue,
      //   backgroundColor: Colors.yellow,
      // ),
    );
  }
}

enum Menus {
  home,
  favotite,
  add,
  message,
  user,
}

class MyBottomNavigation extends StatelessWidget {
  final Menus currentindex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation({
    super.key,
    required this.currentindex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 70,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
                child: BottomNavigationbarItem(
              icon: const Icon(Icons.home),
              current: currentindex,
              name: Menus.home,
              onPressed: () => onTap(Menus.home),
            )),
            Expanded(
                child: BottomNavigationbarItem(
              icon: const Icon(Icons.favorite),
              current: currentindex,
              name: Menus.favotite,
              onPressed: () => onTap(Menus.favotite),
            )),
            const Spacer(),
            Expanded(
                child: BottomNavigationbarItem(
              icon: const Icon(Icons.message),
              current: currentindex,
              name: Menus.message,
              onPressed: () => onTap(Menus.message),
            )),
            Expanded(
                child: BottomNavigationbarItem(
              icon: const Icon(Icons.person),
              current: currentindex,
              name: Menus.user,
              onPressed: () => onTap(Menus.user),
            ))
          ],
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        child: GestureDetector(
          onTap: () => onTap(Menus.add),
          child: Container(
            height: 64,
            width: 64,
            decoration: const BoxDecoration(
                color: AppColor.primary, shape: BoxShape.circle),
            child: const Icon(
              Icons.add,
              size: 36,
              color: Colors.black,
            ),
          ),
        ),
      )
    ]);
  }
}
