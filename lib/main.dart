import 'package:flutter/material.dart';
import 'package:intern_assignment/screens/gettingStarted.dart';

void main() => runApp(MyApp()); //runs app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socrates Diary',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GettingStarted(); //loads getting started page
  }
}
