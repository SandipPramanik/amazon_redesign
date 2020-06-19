import 'package:flutter/material.dart';

class FeatureText extends StatelessWidget {

final String txt;

FeatureText(this.txt);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 10.0),
        Text(
          "•",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
            color: Colors.amber[800],
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            txt,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
