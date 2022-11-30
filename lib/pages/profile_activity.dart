import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';

class ProfileActivity extends StatelessWidget {
  const ProfileActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProfileActivity"),),
      body: const Center(child: Icon(MyFlutterApp.svg4,size: 250,)),
    );
  }
}
