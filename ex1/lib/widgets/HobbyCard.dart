import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    required this.hobbyTitle,
    required this.hobbyIcon,
    this.cardColor = Colors.blue, // Default to blue
  });

  final String hobbyTitle;
  final IconData hobbyIcon;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, top: 20, bottom: 20),
              child: Icon(hobbyIcon, color: Colors.white),
            ),
            Text(
              hobbyTitle,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
