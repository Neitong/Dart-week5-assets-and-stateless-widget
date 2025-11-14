import 'package:flutter/material.dart';
// import '../ ';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                _buildBox('1', Colors.red),
                _buildBox('2', Colors.green),
                _buildBox('3', Colors.blue),
              ],
            ),
        ),
      ),
    );
  }
  //
  // Widget _buildTitle(String text) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 16.0),
  //     child: Text(
  //       text,
  //       style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }

  Widget _buildBox(String text, Color color) {
    return Container(
      color: color,
      width: 50,
      height: 50,
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Alignment Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const AlignmentDemoPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

