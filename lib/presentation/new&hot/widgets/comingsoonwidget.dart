import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

import '../../../core/colors/colors.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'FEB',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kgreycolor),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
        SizedBox(
          height: 550,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoCardWidget(image: 'assets/images/demonslayer.jpg'),
              kheigth,
              Row(
                children: [
                  Text(
                    'Demon Slayer',
                    style: GoogleFonts.itim(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      MainscreenButtonWidget(
                        icon: Icons.add_alert_rounded,
                        title: 'Remaind me',
                        textsize: 10,
                        iconsize: 20,
                      ),
                      kwidth,
                      MainscreenButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                        textsize: 10,
                        iconsize: 20,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kheigth,
              const Text('Coming on Friday'),
              kheigth,
              const Text(
                'Demon Slayer',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              kheigth,
              const Text(
                'It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.',
                style: TextStyle(color: kgreycolor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
