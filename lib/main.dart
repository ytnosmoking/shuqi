import 'package:flutter/material.dart';

import 'dart:io';
import 'package:SHU_QI/app/app_scene.dart';

void main() {
  runApp(AppScene());
  if (Platform.isAndroid) {
    print('is Android');
  } else {
    print('is IOS');
  }
}
