import 'package:flutter/material.dart';
import 'package:flutter_releases/home.dart';
import 'package:flutter_releases/mine.dart';
import 'package:flutter_releases/find.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_releases/states/home_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final store =
      Store<CountState>(reducer, initialState: CountState.initState());
  @override
  State createState() => new HomeState(store);
}

class HomeState extends State<MyApp> with SingleTickerProviderStateMixin {
  final Store<CountState> store;
  HomeState(this.store);

  int _tabIndex = 0;
  var appBarTitles = ['首页', '发现', '我的'];
  var _pageList;
  void initData() {
    _pageList = [new Home(), new Find(), new Mine()];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    // TODO: implement build
    return StoreProvider<CountState>(
        store: store,
        child: new MaterialApp(
          home: new Scaffold(
            body: _pageList[_tabIndex],
            bottomNavigationBar: new BottomNavigationBar(
              items: [
                new BottomNavigationBarItem(
                    icon: Icon(Icons.face), title: Text(appBarTitles[0])),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.face), title: Text(appBarTitles[1])),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.face), title: Text(appBarTitles[2])),
              ],
              currentIndex: _tabIndex,
              onTap: (index) {
                setState(() {
                  _tabIndex = index;
                });
              },
              iconSize: 24.0,
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ));
  }
}
