import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

class HomeNovelCoverView extends StatelessWidget {
  final Novel novel;
  HomeNovelCoverView(this.novel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15 * 3) / 4;
    return GestureDetector(
      onTap: () {
        print('home _ novel _ cover _image');
      },
      child: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NovelCoverImage(
                novel.imgUrl,
                width: width,
                height: width / 0.75,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                novel.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                novel.author,
                style: TextStyle(fontSize: 12, color: SQColor.gray),
                maxLines: 1,
              )
            ],
          )),
    );
  }
}
