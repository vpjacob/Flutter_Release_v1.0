import 'package:flutter/material.dart';

class Find extends StatefulWidget {
  @override
  State createState() => HomeState();
}

class HomeState extends State<Find> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Find"),
            centerTitle: true, // 是否让title居中
            leading: new Icon(Icons.face),
          ),
          body: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('$index'),
            );
          },
          itemCount: 100,
          )),
    );
  }
}
