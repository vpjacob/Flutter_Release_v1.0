import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';

class Mine extends StatefulWidget {
  @override
  State createState() => MineState();
}

class MineState extends State<Mine> with SingleTickerProviderStateMixin {
//  VideoPlayerController _controller;
//  bool _isPlaying = false;

//  @override
//  void initState() {
//    super.initState();
//    _controller = VideoPlayerController.network(
//        'http://static.smartisanos.cn/common/video/proud-farmer.mp4');
//
//    _controller.addListener(() {
//      final bool isPlaying = _controller.value.isPlaying;
//      if (isPlaying != _isPlaying) {
//        setState(() {
//          _isPlaying = isPlaying;
//        });
//      }
//    });
//
//    _controller.initialize().then((_) {
//      setState(() {});
//    });
//  }

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
//        body: Center(
//            child: _controller.value.initialized
//                ? AspectRatio(
//                    aspectRatio: _controller.value.aspectRatio,
//                    child: VideoPlayer(_controller),
//                  )
//                : Container()),
//        floatingActionButton: FloatingActionButton(
//          onPressed: _controller.value.isPlaying
//              ? _controller.pause
//              : _controller.play,
//          child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow),
//        ),
      ),
    );
  }
}
