import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/Model/download_model/upcoming_model.dart';

import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

class EveryOnesWhatchingwidget extends StatelessWidget {
   EveryOnesWhatchingwidget({
    super.key,
    required this.movieData
  });
  Result movieData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth,
           Text(
            movieData.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth,
           Text(
            movieData.overview,
            style: TextStyle(color: kgreycolor),
          ),
          kheight50,
           VideoCardWidget(image:'https://image.tmdb.org/t/p/w200${movieData.posterPath}'),
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
