import 'package:flutter/material.dart';
import 'package:SHU_QI/public.dart';
import 'package:SHU_QI/app/root_scene.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver();

class AppScene extends StatelessWidget {
  const AppScene({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo 暑期',
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: Color(0xffeeeeee),
        scaffoldBackgroundColor: SQColor.paper,
        textTheme: TextTheme(bodyText1: TextStyle(color: SQColor.darkGray)),
      ),
      home: RootScene(),
    );
  }
}
