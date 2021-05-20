import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:video_player/video_player.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  VideoPlayerController _controller;
  Future<void> _initialiazeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('videos/hotel.mp4');
    _initialiazeVideoPlayerFuture = _controller.initialize();
    _controller.play();
    _controller.setLooping(false);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Expanded(
              child: FutureBuilder(
                future: _initialiazeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 130),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 60,
            width: 250,
            child: Text(
              'M U L T E X',
              style: TextStyle(
                color: kColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 105),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/second');
                    //_controller.pause();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    child: Text(
                      'Getting Started',
                      style:
                          TextStyle(color: kColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
          // Container(
          //   height: 30,
          //   width: 120,
          //   alignment: Alignment.center,
          //   color: Colors.white,
          //   margin: EdgeInsets.only(top: 50, right: 45),
          //   decoration: ,
          //   child: Text(
          //     'Created by Mehdi',
          //     style: TextStyle(fontWeight: FontWeight.bold, color: kColor),
          //   ),
          // )
        ],
      ),
    );
  }
}

// FloatingActionButton(
//   onPressed: () {
//     setState(
//       () {
//         if (_controller.value.isPlaying) {
//           _controller.pause();
//         } else {
//           _controller.play();
//         }
//       },
//     );
//   },
// ),
