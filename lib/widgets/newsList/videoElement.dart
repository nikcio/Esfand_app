import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:async';
import 'package:esfandapp/globalValues.dart';
import 'package:esfandapp/main.dart';

class VideoElement extends StatefulWidget {
  final String id;
  final bool last;
  final int listIndex;
  VideoElement({this.id, this.last, this.listIndex, Key key}) : super(key: key);

  @override
  VideoElementState createState() => VideoElementState();
}

class VideoElementState extends State<VideoElement> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: true,
      ),
    )..addListener(listener);
  }

  void listener() {
    if (isFullscreen != _controller.value.isFullScreen) {
      setState(() {
        isFullscreen = _controller.value.isFullScreen;
        if(widget.listIndex == -1 && fullscreenIndex != -1){
          prevFullscreenIndex = fullscreenIndex;
        }
        fullscreenIndex = widget.listIndex;
      });
      key.currentState.setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isFullscreen ? MediaQuery.of(context).size.height : null,
      margin:
      widget.last ? null : EdgeInsets.only(bottom: isFullscreen ? 40 : 20),
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
        builder: (context, player) {
          return Column(
            children: [
              player,
            ],
          );
        },
      ),
    );
  }
}