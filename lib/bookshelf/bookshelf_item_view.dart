import 'package:flutter/material.dart';
import 'package:SHU_QI/public.dart';

class BookshelfItemView extends StatelessWidget {
  final Novel novel;
  const BookshelfItemView(this.novel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 24 * 2) / 3;

    return GestureDetector(
      onTap: () {
        print('go to detail');
        print(novel);
      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DecoratedBox(
              child: NovelCoverImage(
                novel.imgUrl,
                width: width,
                height: width / 0.75,
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Color(0x22000000), blurRadius: 5)
              ]),
            ),
            SizedBox(height: 10),
            Text(
              novel.name,
              style: TextStyle(fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
