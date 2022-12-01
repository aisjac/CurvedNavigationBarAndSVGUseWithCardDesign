import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';
import '../custom_icon/svg_icons.dart';

class EditActivity extends StatelessWidget {
  const EditActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Icon(MyFlutterApp.svg2,size: 250,)),
    );
  }
}
