import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:never_alone/widget/appbar_widget.dart';

/// This is the stateful widget that the main application instantiates.
class ViewsPage extends StatefulWidget {
  final User user;
  const ViewsPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ViewsPage> createState() => _ViewsPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ViewsPageState extends State<ViewsPage> {
  int _selectedIndex = 0;
  List<String> pageTitles = ['Map', 'Groups', 'People'];
  String pageTitle = 'Map';
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      pageTitle = pageTitles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, pageTitle, widget.user),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'People',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
