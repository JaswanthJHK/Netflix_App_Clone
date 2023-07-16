import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
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
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/Netflix-avatar.png'),
                    ),
                    VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My List'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(icon: Icons.play_arrow, title: 'play'),
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
