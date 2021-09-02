import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/widget/settings_widget.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({required this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isSendingVerification = false;
  bool _isSigningOut = false;
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildImage(),
          Text('NAME: ${_currentUser.displayName}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          const SizedBox(height: 4),
          Text(
            'NAME: ${_currentUser.email}',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 24,
          ),
          SettingsWidget(),
        ],
      ),
    );
  }
}

Widget buildImage() {
  final image = NetworkImage('url');

  return ClipOval(
    child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image,
        fit: BoxFit.cover,
        width: 128,
        height: 128,
      ),
    ),
  );
}
