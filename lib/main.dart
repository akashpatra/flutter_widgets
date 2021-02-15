import 'package:flutter/material.dart';
import 'package:widgets/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Colors.amber,
      ),
      home: HomeScreen(),
    );
  }
}
