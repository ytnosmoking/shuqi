import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'me_header.dart';
import 'me_body.dart';

class MeScene extends StatelessWidget {
  const MeScene({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              MeHeader(),
              SizedBox(
                height: 10,
              ),
              MeBody(),
            ],
          ),
        ),
      ),
    );
  }

  buildItem(title, subtitle) {
    return ListTile(
      title: title,
      subtitle: subtitle,
    );
  }
}
