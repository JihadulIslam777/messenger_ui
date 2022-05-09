import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/screens/chat_page.dart';
import 'package:messenger_ui/screens/people_page.dart';
import 'package:messenger_ui/screens/stories_page.dart';

import '../constants/my_flutter_app_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List pages = [
    const ChatPage(),
    PeoplePage(),
    const StoriesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        backgroundColor: Colors.black,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Badge(
              position: BadgePosition.topEnd(top: -6, end: -8),
              badgeContent: const Text('4'),
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              child: const Icon(
                CustomIcon.comment_1,
              ),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeColor: Colors.grey.shade800,
              position: BadgePosition.topEnd(top: -6, end: -8),
              badgeContent: const Text(
                '71',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
              borderSide: const BorderSide(color: Colors.black, width: 3),
              child: const Icon(
                Icons.people,
              ),
            ),
            label: 'People',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.amp_stories,
            ),
            label: 'Stories',
          ),
        ],
      ),
    );
  }
}
