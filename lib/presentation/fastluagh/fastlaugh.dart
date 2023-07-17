import 'package:flutter/material.dart';
import 'package:netflix/core/video/video_path.dart';
import 'package:netflix/presentation/fastluagh/widgets/videolistitems.dart';
import 'package:video_player/video_player.dart';

class FastLaugh extends StatefulWidget {
  const FastLaugh({super.key});

  @override
  State<FastLaugh> createState() => _FastLaughState();
}

class _FastLaughState extends State<FastLaugh> {
  late VideoPlayerController _controller;
  late String videopath;

  @override
  void initState() {
    super.initState();
    videoController(videoPath: videoPathList[0]);
  }

  void videoController({required videoPath}) {
    _controller = VideoPlayerController.network(videoPath)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            videoPathList.length,
            (index) => VideoListItems(
                  controller: _controller,
                  videoPath: videopath,
                  index: index,
                )).toList(),
        onPageChanged: (value) {
          setState(() {
            _controller.dispose();
          });
          videoController(videoPath: videoPathList[value]);
        },
      )),
    );
  }
}
