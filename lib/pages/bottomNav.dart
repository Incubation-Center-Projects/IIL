import 'package:flutter/material.dart';
import 'package:incubation2/constants/colors.dart';
import 'package:incubation2/pages/cartpage.dart';
import 'package:incubation2/pages/coursepage.dart';
import 'package:incubation2/pages/profilepage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'bookmarks.dart';
import 'homepage.dart';
import 'notification.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
    const BookMarksPage(),
    const NotificationPage(),
    const CoursePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.messageAlert),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ' ',
            )
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
