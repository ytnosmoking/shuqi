import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

import 'package:SHU_QI/home/home_novel_cover_view.dart';

class NovelDetailRecommendView extends StatelessWidget {
  final List<Novel> novels;
  NovelDetailRecommendView(this.novels, {Key key}) : super(key: key);

  Widget buildItems() {
    var children = novels.map((novel) => HomeNovelCoverView(novel)).toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Wrap(
        spacing: 15,
        runSpacing: 20,
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Image.asset('img/home_tip.png'),
                SizedBox(
                  width: 13,
                ),
                Text(
                  '看过本书的人还在看',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          buildItems(),
        ],
      ),
    );
  }
}
