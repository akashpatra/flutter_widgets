import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  var hw = 50.0;
  var imageS = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Widgets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: new Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 94.0, left: 50.0),
              child: new Container(
                height: hw,
                width: hw,
                decoration: new BoxDecoration(
                  color: Color(0XFF2BD392),
                  borderRadius: new BorderRadius.circular(100.0),
                ),
                child: new Icon(
                  Icons.local_offer,
                  color: Colors.white,
                  size: imageS,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, left: 10.0),
              child: new Container(
                height: hw,
                width: hw,
                decoration: new BoxDecoration(
                  color: Color(0XFF4FE0EB),
                  borderRadius: new BorderRadius.circular(100.0),
                ),
                child: new Icon(
                  Icons.home,
                  color: Colors.white,
                  size: imageS,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125.0, left: 50.0),
              child: new Container(
                height: hw,
                width: hw,
                decoration: new BoxDecoration(
                  color: Color(0XFFFDCD60),
                  borderRadius: new BorderRadius.circular(100.0),
                ),
                child: new Icon(
                  Icons.local_car_wash,
                  color: Colors.white,
                  size: imageS,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125.0, left: 80.0),
              child: new Container(
                height: hw,
                width: hw,
                decoration: new BoxDecoration(
                  color: Color(0XFFFC7A8E),
                  borderRadius: new BorderRadius.circular(100.0),
                ),
                child: new Icon(
                  Icons.pin_drop,
                  color: Colors.white,
                  size: imageS,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
