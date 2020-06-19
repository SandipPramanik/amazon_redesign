import 'package:flutter/material.dart';

class DescriptionText extends StatefulWidget {
  final String text;

  DescriptionText({
    this.text,
  });

  @override
  _DescriptionTextState createState() => _DescriptionTextState();
}

class _DescriptionTextState extends State<DescriptionText> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 120) {
      firstHalf = widget.text.substring(0, 120);
      secondHalf = widget.text.substring(120, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Text(firstHalf)
        : Column(
            children: <Widget>[
              Text(
                flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      flag ? "show more" : "show less",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.amber[800],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    flag = !flag;
                  });
                },
              ),
            ],
          );
  }
}
