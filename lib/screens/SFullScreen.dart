import 'package:flutter/material.dart';
import 'package:widgets/stateful/MySlider.dart';
import 'package:widgets/stateful/VolumeInkWell.dart';

class SFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StateFull Widgets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              VolumeInkWell(),
              MySlider(),
            ],
          ),
        ),
      ),
    );
  }
}
