import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

class EveryOnesWhatchingwidget extends StatelessWidget {
  const EveryOnesWhatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth,
          const Text(
            'The Last of Us',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth,
          const Text(
            'Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.s',
            style: TextStyle(color: kgreycolor),
          ),
          kheight50,
          const VideoCardWidget(image: 'assets/images/last-of-us.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              MainscreenButtonWidget(
                icon: Icons.share,
                title: 'share',
                textsize: 16,
                iconsize: 22,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.add,
                title: 'My List',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
            ],
          )
        ],
      ),
    );
  }
}
