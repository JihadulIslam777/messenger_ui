import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    @required this.name,
    @required this.image,
    @required this.profileImage,
  }) : super(key: key);

  final String? name;
  final String? image;
  final String? profileImage;
  // Widget? cAvatar;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 3,
              left: 3,
              child: Text(
                name!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 1,
              left: 1,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.lightBlue,
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(profileImage!),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
