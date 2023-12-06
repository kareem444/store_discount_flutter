import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeSliderFeature extends StatelessWidget {
  const HomeSliderFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: Get.height * 0.2,
        viewportFraction: .9,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(color: Colors.amber),
              child: Center(child: Text('text $i')),
            );
          },
        );
      }).toList(),
    );
  }
}
