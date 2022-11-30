import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeActivity"),),
      body: const Center(child: Icon(MyFlutterApp.svg1,size: 250,)),
    );
  }
}
