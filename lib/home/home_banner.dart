import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';
import 'home_model.dart';

class HomeBanner extends StatelessWidget {
  final List<CarouselInfo> carouselInfos;
  HomeBanner(this.carouselInfos, {Key key}) : super(key: key) {
    print(this.carouselInfos);
  }

  @override
  Widget build(BuildContext context) {
    if (carouselInfos.length == 0) {
      return SizedBox();
    }

    return Container(
      color: Colors.white,
      child: CarouselSlider(
        items: carouselInfos.map((info) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: Screen.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(info.imageUrl ?? '', fit: BoxFit.cover),
            );
          });
        }).toList(),
        options: CarouselOptions(aspectRatio: 2, autoPlay: true),
      ),
    );
  }
}
