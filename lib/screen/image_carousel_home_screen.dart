import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageCarouselHomeScreen extends StatefulWidget {
  const ImageCarouselHomeScreen({super.key});

  @override
  State<ImageCarouselHomeScreen> createState() =>
      _ImageCarouselHomeScreenState();
}

class _ImageCarouselHomeScreenState extends State<ImageCarouselHomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        int? currentPage = pageController.page?.toInt();
        if (currentPage == null) {
          return;
        }
        if (currentPage == 4) {
          currentPage = 0;
        } else {
          currentPage++;
        }
        pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map((number) => Image.asset(
                  "asset/img/image_$number.jpeg",
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
