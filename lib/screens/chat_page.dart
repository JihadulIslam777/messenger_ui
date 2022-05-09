import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:messenger_ui/constants/constants.dart';
import 'package:messenger_ui/screens/search_page.dart';
import '../constants/my_flutter_app_icons.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
        title: const Text(
          'Chats',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[800],
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey[200],
            ),
          ),
          SizedBox(width: width * 0.04),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[800],
            child: Icon(
              CustomIcon.pencil_alt,
              color: Colors.grey[200],
            ),
          ),
          SizedBox(
            width: width * 0.06,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchOption()));
              },
              child: Hero(
                tag: 'search',
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    hintText: 'Search',
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.14,
            // margin: const EdgeInsets.only(top: 8, bottom: 8, left: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: profilePics.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: width * 0.20,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        (index == 0)
                            ? Column(
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundColor: Colors.grey[700],
                                    child: const Icon(CustomIcon.video_call),
                                  ),
                                  // Text('Create call'),
                                ],
                              )
                            : Badge(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                position:
                                    const BadgePosition(bottom: 0, end: 5),
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
                                  backgroundImage: AssetImage(
                                      'assets/images/${profilePics[index]}'),
                                ),
                              ),
                        Flexible(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 150),
                            child: Text(
                              title[index],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.8,
            child: ListView.builder(
              itemCount: profilePics.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    title[index],
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  subtitle: Text(
                    subtitle[index],
                    style: TextStyle(
                      color: Colors.grey.shade600,
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
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
