import 'package:flutter/material.dart';

class InvisibleScreen extends StatelessWidget {
  // Create Circle
  Widget createCircle(Color colorData) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: colorData,
        shape: BoxShape.circle,
      ),
    );
  }

  // Create Row
  Widget createRow() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCircle(Colors.deepPurpleAccent),
          createCircle(Colors.amber),
          createCircle(Colors.deepPurpleAccent)
        ],
      ),
    );
  }

  // Create Column
  Widget createColumn() {
    return Container(
      height: 350,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createCircle(Colors.deepPurpleAccent),
          createCircle(Colors.amber),
          createCircle(Colors.deepPurpleAccent)
        ],
      ),
    );
  }

  // Create Wrap
  Widget createWrap() {
    return Container(
      width: double.infinity,
      height: 350,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 20,
        runSpacing: 20,
        children: <Widget>[
          createCircle(Colors.deepPurpleAccent),
          createCircle(Colors.amber),
          createCircle(Colors.deepPurpleAccent),
          createCircle(Colors.amber),
          createCircle(Colors.deepPurpleAccent),
          createCircle(Colors.amber),
          createCircle(Colors.deepPurpleAccent),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invisible',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            createRow(),
            createColumn(),
            createWrap(),
          ],
        ),
      ),
    );
  }
}
