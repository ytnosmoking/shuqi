import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:SHU_QI/public.dart';

class MeHeader extends StatelessWidget {
  const MeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserManager.currentUser;

    return GestureDetector(
      onTap: () {
        print('user tag');
      },
      child: Container(
          color: SQColor.white,
          padding: EdgeInsets.fromLTRB(20, 30, 15, 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: user?.avatarUrl != null
                    ? CachedNetworkImageProvider(user.avatarUrl)
                    : AssetImage('img/placeholder_avatar.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '登录',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildItem(title: '0.0', subtitle: '书豆余额'),
                        buildItem(title: '0', subtitle: '书卷(张)'),
                        buildItem(title: '0', subtitle: '月票'),
                        Container(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  buildItem({String title = '0.0', String subtitle = '暂无'}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          // textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$subtitle',
          style: TextStyle(
            fontSize: 12,
            color: SQColor.gray,
          ),
        ),
      ],
    );
  }
}
