import 'package:flutter/material.dart';
import 'package:flutter_releases/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        body: new TabBarView(
          children: [new Home(), new Home()],
          controller: _controller,
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child:
              new TabBar(controller: _controller, isScrollable: false, tabs: [
            new Tab(
              text: '首页',
              icon: new Icon(Icons.home),
            ),
            new Tab(
              text: '我的',
              icon: Icon(Icons.mail),
            )
          ]),
        ),
      ),
    );
  }
}
