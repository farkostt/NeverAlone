import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool privateProfile = false;
  bool darkMode = false;
  bool ghostMode = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            title: Text(
              'Private profile',
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
            subtitle: Text(
              'If toggled: your profile will not be visible to others using search.',
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 10),
            ),
            onChanged: (bool value) => setState(() => privateProfile = value),
            value: privateProfile,
            secondary: Icon(Icons.lock),
            activeColor: Colors.orange.shade700,
          ),
          SwitchListTile(
            title: Text(
              'Dark mode',
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
            subtitle: Text(
              'Makes the app darker. May increase battery time.',
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 10),
            ),
            onChanged: (bool value) => setState(() => darkMode = value),
            value: darkMode,
            secondary: Icon(Icons.brightness_3),
            activeColor: Colors.orange.shade700,
          ),
          SwitchListTile(
            title: Text(
              'Ghost mode',
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
            subtitle: Text(
              'Hides your position from everyone.',
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 10),
            ),
            onChanged: (bool value) => setState(() => ghostMode = value),
            value: ghostMode,
            secondary: Icon(Icons.visibility),
            activeColor: Colors.orange.shade700,
          ),
        ],
      ),
    );
  }
}
