import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_releases/states/home_state.dart';
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
      home: new Scaffold(

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
