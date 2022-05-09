import 'package:flutter/material.dart';
import 'package:messenger_ui/constants/constants.dart';

class SearchOption extends StatelessWidget {
  SearchOption({Key? key}) : super(key: key);
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
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Hero(
            tag: 'Search',
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
                border: InputBorder.none,
                fillColor: Colors.black,
                filled: true,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Searches',
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
                const Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/Emma-Watson.jpg'),
                  ),
                  Text(
                    'Emma Watson',
                    style: TextStyle(color: Colors.white70),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Recent Searches',
                style: TextStyle(color: Colors.grey[800], fontSize: 15),
              ),
            ),
            SizedBox(
              height: height * 0.8,
              child: ListView.builder(
                  itemCount: profilePics.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(title[index]),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(profilePics[index]),
                      ),
                      textColor: Colors.white70,
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
