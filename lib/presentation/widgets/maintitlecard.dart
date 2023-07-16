import 'package:flutter/material.dart';
import 'package:netflix/domain/functions/function.dart';
import 'package:netflix/presentation/widgets/maincardwidget.dart';
import '../../core/constants.dart';
import 'maintitlewidget.dart';

class MainTitleCard extends StatelessWidget {
  Future<List<dynamic>>? movieFunction;
  final String title;
  MainTitleCard({
    super.key,
    required this.title,
    this.movieFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: movieFunction,
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          10,
                          (index) => MainCardWidget(
                                image:
                                    'https://image.tmdb.org/t/p/w200${snapshot.data![index].posterPath}',
                              )),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ))
    ]);
  }
}
