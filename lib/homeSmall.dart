import 'package:flutter/material.dart';

class HomeSmall extends StatefulWidget {
  @override
  State createState() => HomeState();
}

class HomeState extends State<HomeSmall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(),
    );
  }
}
