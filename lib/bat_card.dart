import 'package:bat_sh_app_card/pages/delete_activity.dart';
import 'package:bat_sh_app_card/pages/edit_activity.dart';
import 'package:bat_sh_app_card/pages/home_activity.dart';
import 'package:bat_sh_app_card/pages/profile_activity.dart';
import 'package:bat_sh_app_card/pages/settings_activity.dart';
import 'package:bat_sh_app_card/values/custom_color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int _pageIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List<Widget> widgetOptions = [
    // ImageIcon(AssetImage("assets/images/home.png"),size: 100,color: Colors.purple),
    // ImageIcon(AssetImage("assets/images/edit.png"),size: 100,color: Colors.purple),
    // ImageIcon(AssetImage("assets/images/delete.png"),size: 100,color: Colors.purple),
    // ImageIcon(AssetImage("assets/images/settings.png"),size: 100,color: Colors.purple),
    // ImageIcon(AssetImage("assets/images/user.png"),size: 100,color: Colors.purple),

    HomeActivity(),
    EditActivity(),
    DeleteActivity(),
    SettingsActivity(),
    ProfileActivity()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          ImageIcon(AssetImage("assets/images/home.png"),
              size:_pageIndex==0 ? 25: 30, color: Colors.white,),
          ImageIcon(AssetImage("assets/images/edit.png"),
              size: _pageIndex==1 ? 25: 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/delete.png"),
              size: _pageIndex==2 ? 25: 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/settings.png"),
              size: _pageIndex==3 ? 25: 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/user.png"),
              size: _pageIndex==4 ? 25: 30, color: Colors.white),
        ],


        color: Colors.purple,
        buttonBackgroundColor: Colors.purple,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        height: 65,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      body: Center(
        child: widgetOptions.elementAt(_pageIndex),
      ),
    );

    // Card(
    //   shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(12)),
    //   ),
    //   elevation: 3,
    //   shadowColor: Colors.grey,
    //   color: Colors.white,
    //   child: Container(
    //       height: 150,
    //       padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
    //       child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               CircleAvatar(
    //                 backgroundColor: CustomColor.colorLightBlue,
    //                 foregroundImage: const NetworkImage(
    //                   'https://banner2.cleanpng.com/20180402/ojw/kisspng-united-states-avatar-organization-information-user-avatar-5ac20804a62b58.8673620215226654766806.jpg',
    //                 ),
    //                 radius: 32,
    //               ),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //               Expanded(
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       "Full Name",
    //                       style: TextStyle(
    //                           color: CustomColor.colorBlue,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 14),
    //                     ),
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     Text(
    //                       "Email",
    //                       style: TextStyle(
    //                           color: CustomColor.colorBlue,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 14),
    //                     ),
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     Text(
    //                       "Phone Number",
    //                       style: TextStyle(
    //                           color: CustomColor.colorBlue,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 14),
    //                     ),
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     Text(
    //                       "Department",
    //                       style: TextStyle(
    //                           color: CustomColor.colorBlue,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 14),
    //                     ),
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     Text(
    //                       "Designation",
    //                       style: TextStyle(
    //                           color: CustomColor.colorBlue,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 14),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: const [
    //                   Icon(
    //                     Icons.arrow_right_outlined,
    //                     color: Colors.blue,
    //                     size: 28,
    //                   ),
    //                   SizedBox(
    //                     height: 8,
    //                   ),
    //                   Flexible(
    //                     child: Text(
    //                       "Status",
    //                       style: TextStyle(
    //                           color: CupertinoColors.systemBlue,
    //                           fontSize: 14.0,
    //                           fontWeight: FontWeight.w300),
    //                       textAlign: TextAlign.left,
    //                       softWrap: true,
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           )
    //         ],
    //       )),
    // ));
  }

  // void navItemRoute(int index) {
  //   switch (index) {
  //     case 0:
  //       setState(() {
  //
  //       });
  //       Get.to(() => HomeActivity());
  //       break;
  //     case 1:
  //       Get.to(() => EditActivity());
  //       break;
  //     case 2:
  //       Get.to(() => DeleteActivity());
  //       break;
  //     case 3:
  //       Get.to(() => SettingsActivity());
  //       break;
  //     case 4:
  //       Get.to(() => ProfileActivity());
  //       break;
  //     default:
  //       Get.to(() => HomeActivity());
  //   }
  // }
}

