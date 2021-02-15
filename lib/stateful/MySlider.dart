import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.deepPurpleAccent,
      inactiveColor: Colors.amber,
      value: _currentValue,
      min: 0,
      max: 200,
      divisions: 5,
      label: _currentValue.toString(),
      onChanged: (value) {
        setState(() {
          _currentValue = value;
        });
      },
    );
  }
}
