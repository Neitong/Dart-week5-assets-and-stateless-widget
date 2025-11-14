import 'package:flutter/material.dart';
import 'package:apps/weatherCard.dart';
import 'package:apps/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
        child: Text('Weather Page',
            style: TextStyle(fontSize: 30, color: Colors.white))),
    Center(
        child: Text('Cities Page',
            style: TextStyle(fontSize: 30, color: Colors.white))),
    Center(
        child: Text('Add Page',
            style: TextStyle(fontSize: 30, color: Colors.white))),
    Center(
        child: Text('Settings Page',
            style: TextStyle(fontSize: 30, color: Colors.white))),
    Center(
        child: Text('Profile Page',
            style: TextStyle(fontSize: 30, color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //  liquid glass effect to show through
      backgroundColor: Colors.grey[100],
      appBar: const HeaderWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const <Widget>[
              WeatherCard(
                cityName: "Phnom Penh",
                minTemp: 10.0,
                maxTemp: 30.0,
                currentTemp: 12.2,
                weatherIcon: Icons.cloud,
                startColor: Color(0xFF9B59B6),
                endColor: Color(0xFF8E44AD),
              ),
              WeatherCard(
                cityName: "Paris",
                minTemp: 10.0,
                maxTemp: 40.0,
                currentTemp: 22.2,
                weatherIcon: Icons.cloud_queue,
                startColor: Color(0xFF2ECC71),
                endColor: Color(0xFF27AE60),
              ),
              WeatherCard(
                cityName: "Rome",
                minTemp: 10.0,
                maxTemp: 40.0,
                currentTemp: 45.2,
                weatherIcon: Icons.wb_sunny,
                startColor: Color(0xFFE74C3C),
                endColor: Color(0xFFC0392B),
              ),
              WeatherCard(
                cityName: "Toulouse",
                minTemp: 10.0,
                maxTemp: 40.0,
                currentTemp: 45.2,
                weatherIcon: Icons.cloud_outlined,
                startColor: Color(0xFFF1C40F),
                endColor: Color(0xFFF39C12),
              ),
              WeatherCard(
                cityName: "Kompong Chhnang",
                minTemp: 12.0,
                maxTemp: 40.0,
                currentTemp: 40.2,
                weatherIcon: Icons.cloud_download_outlined,
                startColor: Color(0xFFF1C40F),
                endColor: Color(0xFFF39C12),
              ),
              WeatherCard(
                cityName: "London",
                minTemp: 8.0,
                maxTemp: 25.0,
                currentTemp: 15.5,
                weatherIcon: Icons.wb_cloudy,
                startColor: Color(0xFF3498DB),
                endColor: Color(0xFF2980B9),
              ),
              WeatherCard(
                cityName: "Tokyo",
                minTemp: 15.0,
                maxTemp: 35.0,
                currentTemp: 28.0,
                weatherIcon: Icons.brightness_5,
                startColor: Color(0xFFE67E22),
                endColor: Color(0xFFD35400),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: LiquidGlassNavBar(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [Colors.deepPurple, Colors.blue],
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //     ),
      //   ),
      //   selectedIndex: _selectedIndex,
      //   onItemTapped: _onItemTapped,
      // ),
    );
  }
}