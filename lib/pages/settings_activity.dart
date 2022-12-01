import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';

class SettingsActivity extends StatelessWidget {
  const SettingsActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Icon(MyFlutterApp.svg5,size: 250,)),
    );
  }
}
