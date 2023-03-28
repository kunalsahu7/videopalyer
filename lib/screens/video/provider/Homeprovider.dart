import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoprovider extends ChangeNotifier
{

  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  List videolist = [
    "assets/video/video1.mp4",
    "assets/video/video1.mp4",
    "assets/video/video1.mp4",
    "assets/video/video1.mp4",
  ];

  void inivideo(int index)
  {
    videoPlayerController  = VideoPlayerController.asset("${videolist[index]}");
    videoPlayerController!.initialize();

    chewieController = ChewieController(videoPlayerController: videoPlayerController!,autoPlay: false,looping: false,);
  }
}