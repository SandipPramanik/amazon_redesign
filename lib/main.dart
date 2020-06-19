import 'package:flutter/material.dart';
import 'package:amazonredesign/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Redesign',
      debugShowCheckedModeBanner: false,
      home: AmazonRedesign(),
    );
  }
}

class AmazonRedesign extends StatefulWidget {
  @override
  _AmazonRedesignState createState() => _AmazonRedesignState();
}

class _AmazonRedesignState extends State<AmazonRedesign> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
