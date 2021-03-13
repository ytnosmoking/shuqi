import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

class NovelCell extends StatelessWidget {
  final Novel novel;
  const NovelCell(this.novel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AppNavigator
        print('go');
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NovelCoverImage(
              novel.imgUrl,
              width: 78,
              height: 93,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(child: buildRight())
          ],
        ),
      ),
    );
  }

  Widget buildRight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(novel.name,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(
          novel.introduction,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14, color: SQColor.gray),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              novel.author,
              style: TextStyle(fontSize: 14, color: SQColor.gray),
            ),
            Expanded(child: Container()),
            buildTag(novel.status, novel.statusColor()),
            SizedBox(
              width: 5,
            ),
            buildTag(novel.type, SQColor.gray)
          ],
        )
      ],
    );
  }

  Widget buildTag(String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromARGB(99, color.red, color.green, color.blue),
            width: 0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: color),
      ),
    );
  }
}
