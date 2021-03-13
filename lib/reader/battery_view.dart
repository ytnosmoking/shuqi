import 'package:flutter/material.dart';

import 'package:battery/battery.dart';
import 'package:device_info/device_info.dart';
import 'dart:io';

import 'package:SHU_QI/public.dart';

class BatterView extends StatefulWidget {
  BatterView({Key key}) : super(key: key);

  @override
  _BatterViewState createState() => _BatterViewState();
}

class _BatterViewState extends State<BatterView> {
  double batterLevel = 0;

  @override
  void initState() {
    super.initState();
    getBatteryLevel();
  }

  getBatteryLevel() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      var androidInfo = await deviceInfo.androidInfo;
      if (!androidInfo.isPhysicalDevice) {
        return;
      }
    }
    if (Platform.isIOS) {
      var iosInfo = await deviceInfo.iosInfo;
      if (!iosInfo.isPhysicalDevice) {
        return;
      }
    }
    var level = await Battery().batteryLevel;
    setState(() {
      this.batterLevel = level / 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 12,
      child: Stack(
        children: [
          Image.asset('img/reader_battery.png'),
          Container(
            margin: EdgeInsets.all(2),
            width: 20 * batterLevel,
            color: SQColor.golden,
          ),
        ],
      ),
    );
  }
}
