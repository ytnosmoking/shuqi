import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:SHU_QI/app/sq_color.dart';

class NovelCoverImage extends StatelessWidget {
  final String imgUrl;
  final double width;
  final double height;
  const NovelCoverImage(this.imgUrl, {this.width, this.height, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: CachedNetworkImageProvider(imgUrl),
        fit: BoxFit.cover,
        width: this.width,
        height: this.height,
      ),
      decoration: BoxDecoration(border: Border.all(color: SQColor.paper)),
    );
  }
}
