import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  State createState() => MineState();
}

class MineState extends State<Mine> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Mine"),
          centerTitle: true, // 是否让title居中
          leading: new Icon(Icons.face),
          automaticallyImplyLeading: true,
        ),
        body: new Text('Mine'),
      ),
    );
  }
}
