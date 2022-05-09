import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/widgets/custom_card.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: const [
              CustomCard(
                  name: 'Add to story',
                  image: 'assets/images/profile_pic.jpg',
                  profileImage: 'assets/imagegrid/9.jpg'),
              CustomCard(
                  name: 'Emma Watson',
                  image: 'assets/images/Emma-Watson.jpg',
                  profileImage: 'assets/imagegrid/1.jpg'),
              CustomCard(
                  name: 'Alexandra Daddario',
                  image: 'assets/images/Alexandra-Daddario.jpg',
                  profileImage: 'assets/imagegrid/2.jpg'),
              CustomCard(
                  name: 'Dakota Johnson',
                  image: 'assets/images/Dakota_johnson.jpg',
                  profileImage: 'assets/imagegrid/3.jpg'),
              CustomCard(
                  name: 'Dakota Fanning',
                  image: 'assets/images/Dakota-Fanning.jpg',
                  profileImage: 'assets/imagegrid/4.jpg'),
              CustomCard(
                  name: 'Deepika Padukone',
                  image: 'assets/images/Deepika-Padukone.jpg',
                  profileImage: 'assets/imagegrid/5.jpg'),
              CustomCard(
                  name: 'Nadia Hilker',
                  image: 'assets/images/Nadia-Hilker.jpg',
                  profileImage: 'assets/imagegrid/8.jpg'),
              CustomCard(
                  name: 'Jennifer Lawrence',
                  image: 'assets/images/jennifer-lawrence.jpg',
                  profileImage: 'assets/imagegrid/7.jpg'),
            ],
          ),
        ));
  }
}
