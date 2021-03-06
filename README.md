# flutter_releases

A new Flutter application.

- [关于Google Flutter](https://flutterchina.club/)


## 写在Flutter正式版首发之日



# Flutter_Release_v1.0

# TODO

- [x] [根据缘起的gitbook生成mobi电子书 ---flutter.mobi](https://github.com/flutterchina/flutter-in-action)
- [x] 了解Widget的所以的Api
- [ ] 网络请求
- [ ] 了解常用的第三方框架
- [ ] 尝试搭建一个完整APP
- [ ] 加入Redux管理


## Appbar Api


- this.leading,
 	- Widget leading
- this.automaticallyImplyLeading = true,
	- ImplyLeading If true and [leading] is null, automatically try to deduce what the leading,If leading widget is not null, this parameter has no effect
- this.title,
	- a [Text] widget containing
- this.actions,
	- Widgets to display after the [title] widget.Typically these widgets are [IconButton]s representing common operations.
		- IconButton   -------------其中icon和onPressed是必须的
			- this.iconSize = 24.0,
    		- this.padding = const EdgeInsets.all(8.0),
    		- this.alignment = Alignment.center,
    		- @required this.icon,
    		- this.color,
     		- this.highlightColor,
    		- this.splashColor,
    		- this.disabledColor,
    		- @required this.onPressed,
    		- this.tooltip
- this.flexibleSpace,--------Typically a [FlexibleSpaceBar].
	 - this.title,
    - this.background,
    - this.centerTitle,
    - this.collapseMode = CollapseMode.parallax

- this.bottom,-----------[PreferredSize], which can be used to give an arbitrary widget a preferred size.----this.child和this.preferredSize 是必须的
	 -  @required this.child,
  	 -  @required this.preferredSize,
	  	 -  Size preferredSize
		  	 -  Size(double width, double height)

- this.elevation = 4.0,
	- the shadow below the app bar..height
- this.backgroundColor,
	- Colors.red
- this.brightness,
	- Brightness.dark
	- Brightness.light
- this.iconTheme,-------------改变icon的颜色，并不会改变action的icon的size。
	- iconTheme---------- IconThemeData(color: Colors.red,opacity: 2.0,size: 10.2)
- this.textTheme,
	- TextTheme
		- this.display4,
    	- this.display3,
		- this.display2,
		- this.display1,
		- this.headline,
		- this.title,
		- this.subhead,
		- this.body2,
		- this.body1,
		- this.caption,
		- this.button,
		- this.subtitle,
		- this.overline,

- this.primary = true,-----Whether this app bar is being displayed at the top of the screen.
- this.centerTitle,-----Whether the title should be centered.
- this.titleSpacing = NavigationToolbar.kMiddleSpacing,
- this.toolbarOpacity = 1.0,
- this.bottomOpacity = 1.0,

#### appbar example
```
appBar: new AppBar(
          title: new Text("title"),
          centerTitle: true, // 是否让title居中
          leading: new Icon(Icons.face),
          automaticallyImplyLeading: true,
          flexibleSpace: new FlexibleSpaceBar(
              centerTitle:true,
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
          elevation: 100,
          backgroundColor: Colors.lightBlueAccent,
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.yellow,opacity: 2.0,size: 15.2),
          textTheme: TextTheme(title: TextStyle(color: Colors.red),subtitle: TextStyle(color: Colors.red)),
          primary: ,
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

```

<div>
    <img src='./image/Screenshot_1543986237.png' width=280>
    <img src='./image/app_bar.png'>
   
</div>


## TabController 要区别于 BottomNavigationBar。
适用于界面中的可以滑动的tab。我要实现的是底部的tabbar。

TabController 可以在底部也可以在顶部，而且可以左右滑动切换界面。下面还有指示图，可以切换颜色

实现起来很简单

```
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


```
<div>
    <img src='./image/Screenshot_1544174987.png' width=280>
</div>


## BottomNavigationBar。

```
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


```
