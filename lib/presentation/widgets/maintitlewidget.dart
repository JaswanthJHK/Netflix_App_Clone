import 'package:flutter/material.dart';

class MainTitlewidget extends StatelessWidget {
  final String title;
  const MainTitlewidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
