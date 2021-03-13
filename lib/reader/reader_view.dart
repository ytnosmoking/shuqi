import 'package:SHU_QI/reader/reader_overlayer.dart';
import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

import 'reader_utils.dart';
import 'reader_config.dart';

class ReaderView extends StatelessWidget {
  final Article article;
  final int page;
  final double topSafeHeight;

  const ReaderView({Key key, this.article, this.page, this.topSafeHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            'img/read_bg.png',
            fit: BoxFit.cover,
          ),
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
        ),
        ReaderOverLayer(
          article: article,
          page: page,
          topSafeHeight: topSafeHeight,
        ),
        buildContent(article, page),
      ],
    );
  }

  buildContent(Article article, int page) {
    var content = article.stringAtPageIndex(page);
    if (content.startsWith('\n')) {
      content = content.substring(1);
    }
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.fromLTRB(15, topSafeHeight + ReaderUtils.topOffset, 10,
          Screen.bottomSafeHeight + ReaderUtils.bottomOffset),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: content,
              style: TextStyle(
                fontSize: fixedFontSize(ReaderConfig.instance.fontSzie),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
