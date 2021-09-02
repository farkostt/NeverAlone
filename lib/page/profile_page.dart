import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/model/user.dart';
import 'package:never_alone/utils/user_preferences.dart';
import 'package:never_alone/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/widget/settings_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
          SettingsWidget(),
        ],
      ),
    );
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        const SizedBox(height: 4),
        Text(
          user.email,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
