import 'package:flutter/material.dart';
import 'package:login_app/component/edit_text_field.dart';
import 'package:login_app/component/my_text.dart';
import 'package:login_app/component/tool_bar.dart';
import 'package:login_app/component/user_avatar.dart';
import 'package:login_app/style/app_color.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ToolBar(title: "Edit profile"),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4),
                      child: UserAvatar(size: 120),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                 EditTextField(title: MyText.firstname),
                const SizedBox(
                  height: 16,
                ),
                const EditTextField(title: "Last name"),
                const SizedBox(
                  height: 16,
                ),
                const EditTextField(title: "Phone number"),
                const SizedBox(
                  height: 16,
                ),
                const EditTextField(title: "Location"),
                const SizedBox(
                  height: 16,
                ),
                const EditTextField(title: "Date of birth"),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.field,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      top: 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Gender"),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: const Text("Male"),
                                contentPadding: EdgeInsets.zero,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                value: Gender.male,
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = Gender.male;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                title: const Text("Female"),
                                contentPadding: EdgeInsets.zero,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                value: Gender.female,
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = Gender.female;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                title: const Text("Other"),
                                contentPadding: EdgeInsets.zero,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                value: Gender.other,
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = Gender.other;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
