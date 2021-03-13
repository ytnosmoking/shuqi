import 'package:flutter/material.dart';

import 'package:SHU_QI/utility/screen.dart';

afterLayout(VoidCallback callback) {
  WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
    callback();
  });
}

fixedFontSize(double fontSize) {
  return fontSize / Screen.textScaleFactor;
}
