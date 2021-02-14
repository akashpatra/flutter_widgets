import 'package:flutter/material.dart';
import 'package:widgets/SLessScreen.dart';

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
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          child: Column(
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
                margin: EdgeInsets.symmetric(vertical: 25),
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
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
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
                onTap: () => print("Clicked 2"),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
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
            ],
          ),
        ),
      ),
    );
  }
}
