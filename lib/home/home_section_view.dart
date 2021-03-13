import 'package:flutter/material.dart';

class HomeSectionView extends StatelessWidget {
  final String title;
  String _tip = 'img/home_tip.png';
  HomeSectionView(this.title, {Key key}) : super(key: key) {
    print('HomeSectionView');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 15, 0, 5),
      child: Row(
        children: [
          Image.asset(_tip),
          SizedBox(width: 10),
          Text(
            '$title',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
