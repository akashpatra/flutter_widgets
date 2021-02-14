import 'package:flutter/material.dart';

class SLessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stateless',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Text('Stateless'),
    );
  }
}
