import 'package:flutter/material.dart';
import 'package:flutter_releases/homeSmall.dart';

class Home extends StatefulWidget {
  @override
  State createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
          centerTitle: true, // 是否让title居中
          leading: new Icon(Icons.face),
          automaticallyImplyLeading: true,
          flexibleSpace: new FlexibleSpaceBar(
            centerTitle: true,
            title: new Text("flexibleSpace"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // ...
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // ...
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // ...
              },
            ),
          ],
          elevation: 4,
          backgroundColor: Colors.lightBlueAccent,
          brightness: Brightness.dark,
          iconTheme:
              IconThemeData(color: Colors.yellow, opacity: 2.0, size: 15.2),
          textTheme: TextTheme(
              title: TextStyle(color: Colors.red),
              subtitle: TextStyle(color: Colors.red)),
          bottom: new PreferredSize(
              child: new Container(
                child: Row(
                  // 让内容在中间
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Icon(Icons.face),
                    Icon(Icons.face),
                    Icon(Icons.face),
                    Icon(Icons.face),
                    Icon(Icons.face),
                  ],
                ),
              ),
              preferredSize: Size(30.0, 30.0)),
        ),
        body: new TabBarView(
          children: [new HomeSmall(), new HomeSmall()],
          controller: _controller,
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child:
              new TabBar(controller: _controller, isScrollable: false, tabs: [
            new Tab(
              text: 'tab1',
              icon: new Icon(Icons.home),
            ),
            new Tab(
              text: 'tab2',
              icon: Icon(Icons.mail),
            )
          ]),
        ),
      ),
    );
  }
}
