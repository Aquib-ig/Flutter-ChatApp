import 'package:flutter/material.dart';
import 'package:login_app/component/post_item.dart';
import 'package:login_app/component/tool_bar.dart';
import 'package:login_app/config/app_routes.dart';

class HomePage extends StatelessWidget {
  List users = [];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    fetchUserFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: "5MinFlutter",
        action: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearBy);
            },
            icon: const Icon(
              Icons.location_on,
              size: 26,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  fetchUserFromServer() {
    for (var i = 0; i < 20; i++) {
      users.add("User number: $i");
    }
  }
}
