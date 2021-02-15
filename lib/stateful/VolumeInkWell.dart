import 'package:flutter/material.dart';

class VolumeInkWell extends StatefulWidget {
  @override
  _VolumeInkWellState createState() => _VolumeInkWellState();
}

class _VolumeInkWellState extends State<VolumeInkWell> {
  var _volumeData = 0;

  Widget buildVolume() {
    return Container(
      width: 90,
      height: 90,
      child: InkResponse(
        splashColor: Colors.amber,
        highlightColor: Colors.lightGreenAccent.withOpacity(0.5),
        child: Icon(
          Icons.add_circle,
          size: 40,
        ),
        radius: 90,
        onTap: () {
          setState(() {
            _volumeData += 1;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildVolume(),
        Text(
          _volumeData.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
