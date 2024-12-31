import 'package:flutter/material.dart';
import 'package:login_app/style/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/user1.png",
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                user,
                style: AppText.subTitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset("assets/images/post1.png"),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "This is very nice picture of the sun and beautiful tree with beautiful mountain behind the tree",
            style: AppText.subTitle3,
          ),
        ],
      ),
    );
  }
}
