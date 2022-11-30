import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';
import '../values/custom_color.dart';

class DeleteActivity extends StatelessWidget {
  const DeleteActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DeleteActivity"),),
      body: Card(
        elevation: 2,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: CustomColor.colorLightBlue,
            foregroundImage: const NetworkImage(
              'https://banner2.cleanpng.com/20180402/ojw/kisspng-united-states-avatar-organization-information-user-avatar-5ac20804a62b58.8673620215226654766806.jpg',
            ),
            radius: 32,
          ),
          title: Text(
            "name",
            style: TextStyle(
                color: CustomColor.colorBlue,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          subtitle: Text(
            "Designation",
            style: TextStyle(color: CustomColor.colorBlue, fontSize: 12),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.arrow_right_outlined,
                color: Colors.blue,
                size: 28,
              ),
              SizedBox(
                height: 8,
              ),
              Flexible(
                child: Text(
                  "Status",
                  style: TextStyle(
                      color: CupertinoColors.systemBlue,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

