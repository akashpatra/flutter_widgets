import 'package:flutter/material.dart';
import 'package:widgets/screens/InvisibleScreen.dart';
import 'package:widgets/screens/SFullScreen.dart';
import 'package:widgets/screens/SLessScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widgets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.green,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Text(
                'Welcome to Widgets World',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
              margin: EdgeInsets.only(top: 25),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return SLessScreen();
                  },
                ),
              ),
              child: Container(
                width: 200,
                margin: EdgeInsets.symmetric(vertical: 7),
                alignment: Alignment.center,
                child: Text('Stateless',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                      fontSize: 20,
                    )),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return SFullScreen();
                  },
                ),
              ),
              child: Container(
                width: 200,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 7),
                child: Text('Stateful',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontSize: 20,
                    )),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return InvisibleScreen();
                  },
                ),
              ),
              child: Container(
                width: 200,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 7),
                child: Text('Invisible',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                      fontSize: 20,
                    )),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
