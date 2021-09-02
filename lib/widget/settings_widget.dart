import 'dart:io';

import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
      ),
    ]);
  }
}
