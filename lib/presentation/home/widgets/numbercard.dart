import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:netflix/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
   NumberCard({super.key, required this.index, required this.image});
  final int index;
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              height: 180,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image:  DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Positioned(
          left: 5,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: kwhite,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: kblackcolor,
                  decoration: TextDecoration.none,
                  decorationColor: kwhite),
            ),
          ),
        )
      ],
    );
  }
}
