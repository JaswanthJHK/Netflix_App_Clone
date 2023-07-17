import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:video_player/video_player.dart';

class VideoListItems extends StatefulWidget {
  final int index;
  VideoPlayerController controller;
  String videoPath;
  VideoListItems(
      {super.key,
      required this.index,
      required this.controller,
      required this.videoPath});

  @override
  State<VideoListItems> createState() => _VideoListItemsState();
}

class _VideoListItemsState extends State<VideoListItems> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: widget.controller.value.isInitialized
                ? VideoPlayer(widget.controller)
                : const Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                    ),
                  ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: kblackcolor.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off_outlined),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/Netflix-avatar.png'),
                    ),
                    VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My List'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            widget.controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: kwhite,
                          ),
                          onPressed: () {
                            setState(() {
                              widget.controller.value.isPlaying
                                  ? widget.controller.pause()
                                  : widget.controller.play();
                            });
                          },
                        ),
                        const Text(
                          'Play',
                          style: TextStyle(fontSize: 14, color: kwhite),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
            color: kwhite,
          ),
          Text(
            title,
            style: const TextStyle(color: kwhite, fontSize: 14),
          )
        ],
      ),
    );
  }
}
