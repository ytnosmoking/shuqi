import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

class NovelGridItem extends StatelessWidget {
  final Novel novel;
  NovelGridItem(this.novel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15) / 2;
    return GestureDetector(
      onTap: () {
        print('novel -gritd -item ');
      },
      child: Container(
        width: width,
        child: Row(
          children: [
            NovelCoverImage(novel.imgUrl, width: 50, height: 66),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  novel.name,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16, height: 0.9, fontWeight: FontWeight.bold),
                ),
                Text(
                  novel.recommendCountStr(),
                  style: TextStyle(fontSize: 12, color: SQColor.gray),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
