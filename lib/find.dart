import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Find extends StatefulWidget {
  @override
  State createState() => HomeState();
}

void aa() async {
  Dio dio = new Dio();
  Response response;
  response = await dio.get("http://www.baidu.com");
  print(response.data.toString());
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
          body: new ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.blue,
                        width: 80,
                        height: 80,
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('$index sss'),
                              Text('aaaadddd')
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.blue,
                                child: Text('ddd'),
                              ),  Container(
                                color: Colors.blue,
                                child: Text('ddd'),
                              ),
//                              Text('aaaadddd')
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('$index sss'),
                              Text('aaaadddd')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  height: 100,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 1);
              },
              itemCount: 100)),
    );
  }
}
