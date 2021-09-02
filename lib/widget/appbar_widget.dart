import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/page/profile_page.dart';

AppBar buildAppBar(BuildContext context, String pageTitle) {
  final icon = CupertinoIcons.settings;

  return AppBar(
    title: Text(pageTitle),
    elevation: 0,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          icon: Icon(icon))
    ],
  );
}
