import 'package:flutter/material.dart';

class ImageCarouselHomeScreen extends StatefulWidget {
  const ImageCarouselHomeScreen({super.key});

  @override
  State<ImageCarouselHomeScreen> createState() =>
      _ImageCarouselHomeScreenState();
}

class _ImageCarouselHomeScreenState extends State<ImageCarouselHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
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
