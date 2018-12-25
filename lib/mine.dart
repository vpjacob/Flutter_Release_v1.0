import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'package:flutter_releases/states/home_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Mine extends StatefulWidget {
  @override
  State createState() => MineState();
}

class MineState extends State<Mine> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Video Player"),
          centerTitle: true, // 是否让title居中
          leading: new Icon(Icons.face),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('youhave poushed may time'),
              StoreConnector<CountState,int>(
                converter: (store)=>store.state.count,
                builder: (context,count){
                  return Text(
                    count.toString(),
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: StoreConnector<CountState,VoidCallback>(
            builder: (context,callback){
              return FloatingActionButton(
                onPressed: callback,
                child: Icon(Icons.add),
              );
            },
            converter: (store){
              return ()=> store.dispatch(Action.increment);
            }
        ),
      ),
    );
  }
}
