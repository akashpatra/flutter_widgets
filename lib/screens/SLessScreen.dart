import 'package:flutter/material.dart';

class SLessScreen extends StatelessWidget {
  Widget buildIconButton() {
    return Container(
      height: 100,
      width: 100,
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.amber,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(
            Icons.flash_on,
            color: Colors.deepPurpleAccent,
            size: 50,
          ),
          onPressed: null,
        ),
      ),
    );
  }

  Widget buildRaisedButton() {
    return RaisedButton(
      textColor: Colors.amber,
      color: Colors.deepPurpleAccent,
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      onPressed: () {},
      child: Text(
        'I m Raised Button',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stateless Widgets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildIconButton(),
            buildRaisedButton(),
          ],
        ),
      ),
    );
  }
}
