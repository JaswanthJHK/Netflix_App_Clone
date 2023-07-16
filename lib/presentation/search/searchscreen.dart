import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/searchresultwidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kgreycolor.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgreycolor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgreycolor,
                ),
                style: const TextStyle(color: kwhite),
              ),
              kheigth,
              const Expanded(child: SearchResultWidget())
            ],
          ),
        ),
      ),
    );
  }
}
