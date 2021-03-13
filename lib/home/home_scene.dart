import 'package:SHU_QI/app/sq_color.dart';
import 'package:flutter/material.dart';

import 'home_list_view.dart';

class HomeScene extends StatefulWidget {
  HomeScene({Key key}) : super(key: key);

  @override
  _HomeSceneState createState() => _HomeSceneState();
}

class _HomeSceneState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.light,
            title: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                labelColor: SQColor.darkGray,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: SQColor.gray,
                indicatorColor: SQColor.secondary,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3,
                indicatorPadding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                tabs: [
                  Tab(text: '精选'),
                  Tab(text: '女生'),
                  Tab(text: '男生'),
                  Tab(text: '漫画'),
                ],
              ),
            ),
            backgroundColor: SQColor.white,
            elevation: 0,
          ),
          body: TabBarView(
            children: [
              HomeListView(HomeListType.excellent),
              HomeListView(HomeListType.female),
              HomeListView(HomeListType.male),
              HomeListView(HomeListType.cartoon),
            ],
          ),
        ));
  }
}
