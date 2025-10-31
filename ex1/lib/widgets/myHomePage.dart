import 'package:flutter/material.dart';
import './HobbyCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40, bottom: 40),
        child: Column(
          children: <Widget>[
            HobbyCard(
              hobbyTitle: 'Travelling',
              hobbyIcon: Icons.travel_explore,
              cardColor: Colors.green,
            ),
            HobbyCard(
              hobbyTitle: 'Skating',
              hobbyIcon: Icons.skateboarding,
              cardColor: Colors.blueGrey,
            ),
            HobbyCard(
              hobbyTitle: 'Reading',
              hobbyIcon: Icons.book_rounded,
              cardColor: Colors.orange,
            ),
            HobbyCard(
              hobbyTitle: 'Cooking',
              hobbyIcon: Icons.restaurant_menu,
              cardColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}