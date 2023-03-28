import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videopalyer/screens/video/provider/Homeprovider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  videoprovider? videotrue;
  videoprovider? videofalse;
  @override
  void initState() {
    super.initState();
    Provider.of<videoprovider>(context,listen: false).inivideo(videotrue!.videolist.length);

  }
  @override
  Widget build(BuildContext context) {
    videofalse= Provider.of<videoprovider>(context,listen: false);
    videotrue = Provider.of<videoprovider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Video"),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Chewie(controller: videotrue!.chewieController!,),
              )

            ],
          ),
        ),
    );
  }
}
