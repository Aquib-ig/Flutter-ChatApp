import 'package:flutter/material.dart';
import 'package:login_app/component/tool_bar.dart';
import 'package:login_app/style/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: "Profile",
        action: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print("Edit");
                  break;
                case ProfileMenu.logout:
                  print("Logout");
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text("Edit"),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text("Logout"),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/temp/user1.png",
            height: 90,
            width: 90,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Khan Aquib",
            style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Bhiwandi",
            style: AppText.subTitle3,
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "543",
                    style: AppText.header2,
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "44",
                    style: AppText.header2,
                  ),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "243",
                    style: AppText.header2,
                  ),
                  Text("Following"),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 2,
            height: 24,
          ),
        ],
      ),
    );
  }
}
