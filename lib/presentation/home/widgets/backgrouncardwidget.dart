import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/playbuttonwidget.dart';
import 'package:netflix/presentation/home/widgets/buttonwidget.dart';

class BackGroundCardWidget extends StatelessWidget {
  const BackGroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/NNxYkU70HPurnNCSiCjYAmacwm.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MainscreenButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                  textsize: 17,
                  iconsize: 30,
                ),
                PlayButton(),
                MainscreenButtonWidget(
                  icon: Icons.info,
                  title: 'Info',
                  textsize: 17,
                  iconsize: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
