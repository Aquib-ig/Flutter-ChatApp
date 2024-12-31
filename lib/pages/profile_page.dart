import 'package:flutter/material.dart';
import 'package:login_app/component/tool_bar.dart';
import 'package:login_app/component/user_avatar.dart';
import 'package:login_app/config/app_routes.dart';
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
                  Navigator.of(context).pushNamed(AppRoutes.editPage);
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
      body: const Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Khan Aquib",
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Bhiwandi",
            style: AppText.subTitle3,
          ),
          SizedBox(
            height: 18,
          ),
          Row(
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
          Divider(
            thickness: 2,
            height: 24,
          ),
        ],
      ),
    );
  }
}
