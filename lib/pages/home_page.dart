import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/component/post_item.dart';
import 'package:login_app/component/tool_bar.dart';

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
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/location3.svg",
              height: 25,
              width: 25,
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
    for (var i = 0; i < 100; i++) {
      users.add("User number: $i");
    }
  }
}
