import 'package:flutter/material.dart';

class CategoriesContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  CategoriesContainer({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[200],
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 34.0,
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Icon(
                      icon,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.amber[800],
                size: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
