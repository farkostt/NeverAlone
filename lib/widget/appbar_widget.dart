import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/page/profile_page.dart';

AppBar buildAppBar(BuildContext context, String pageTitle, User user) {
  final icon = CupertinoIcons.settings;

  return AppBar(
    title: Text(pageTitle),
    elevation: 0,
    leading: new Container(),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(
                  user: user,
                ),
              ),
            );
          },
          icon: Icon(icon))
    ],
  );
}
