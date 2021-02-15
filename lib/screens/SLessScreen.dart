import 'package:flutter/material.dart';

class SLessScreen extends StatelessWidget {
  Widget buildIconButton() {
    return Ink(
      decoration: ShapeDecoration(
        color: Colors.amber,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Icon(
          Icons.flash_on,
          color: Colors.deepPurpleAccent,
          size: 30,
        ),
        onPressed: null,
      ),
    );
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildIconButton(),
          Text('Stateless'),
        ],
      ),
    );
  }
}
