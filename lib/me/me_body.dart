import 'package:flutter/material.dart';

import 'package:SHU_QI/public.dart';

class MeBody extends StatelessWidget {
  const MeBody({Key key}) : super(key: key);

  static List<Map<String, dynamic>> cells = [
    {'icon': 'img/me_wallet.png', "title": "钱包"},
    {'icon': 'img/me_record.png', "title": "消费充值记录"},
    {'icon': 'img/me_buy.png', "title": "购买的书"},
    {'icon': 'img/me_vip.png', "title": "我的会员"},
    {'icon': 'img/me_coupon.png', "title": "绑兑换码"},
    {'icon': 'img/me_date.png', "title": "阅读之约"},
    {'icon': 'img/me_action.png', "title": "公益行动"},
    {'icon': 'img/me_favorite.png', "title": "我的收藏"},
    {'icon': 'img/me_record.png', "title": "打赏记录"},
    {'icon': 'img/me_comment.png', "title": "我的书评"},
    {
      'icon': 'img/me_theme.png',
      "title": "个性换肤",
      "onTap": () {
        print('this is 个性换肤');
      }
    },
    {
      'icon': 'img/me_setting.png',
      "title": "设置",
      "onTap": () {
        print('this is Set');
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cells
          .map(
            (item) => buildCell(
                icon: item["icon"], title: item["title"], onTap: item["onTap"]),
          )
          .toList(),
      // children: [buildCell(icon: 'img/me_wallet.png', title: '钱包')],
    );
  }

  Widget buildCell({
    String icon = 'img/arrow_right.png',
    String title = '暂无',
    VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      // child: Padding(
      // padding: EdgeInsets.symmetric(horizontal: 20),

      // height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Image.asset(icon),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Text(title, style: TextStyle(fontSize: 18)),
                        Expanded(child: Container()),
                        Image.asset('img/arrow_right.png'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: SQColor.lightGray,
                  )
                ],
              ),
            ),
          ),
        ],
        // ),
      ),
    );
  }
}
