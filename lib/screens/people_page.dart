import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/constants/constants.dart';
import 'package:messenger_ui/constants/my_flutter_app_icons.dart';

class PeoplePage extends StatelessWidget {
  PeoplePage({Key? key}) : super(key: key);

  final appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top;
    final width = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Badge(
            position: BadgePosition.topEnd(top: 0, end: -4),
            badgeContent: const Text('4'),
            borderSide: const BorderSide(color: Colors.black, width: 1.5),
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
            ),
          ),
        ),
        title: const Text(
          'People',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[800],
            child: Icon(
              CustomIcon.contacts,
              color: Colors.grey[200],
            ),
          ),
          SizedBox(
            width: width * 0.06,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: profilePics.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  title[index],
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
                leading: Badge(
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                  position: const BadgePosition(bottom: 0, end: 5),
                  // badgeContent: Text('4'),
                  badgeContent: Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  badgeColor: Colors.green,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.blue,
                    backgroundImage:
                        AssetImage('assets/images/${profilePics[index]}'),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              )
            ],
          );
        },
      ),
    );
  }
}
