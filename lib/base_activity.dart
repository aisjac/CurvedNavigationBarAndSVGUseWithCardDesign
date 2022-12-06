import 'package:bat_sh_app_card/pages/delete_activity.dart';
import 'package:bat_sh_app_card/pages/edit_activity.dart';
import 'package:bat_sh_app_card/pages/home_activity.dart';
import 'package:bat_sh_app_card/pages/profile_activity.dart';
import 'package:bat_sh_app_card/pages/settings_activity.dart';
import 'package:bat_sh_app_card/values/custom_color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseActivity extends StatefulWidget {
  const BaseActivity({Key? key}) : super(key: key);

  @override
  State<BaseActivity> createState() => _BaseActivityState();
}

class _BaseActivityState extends State<BaseActivity> {
  String title = "Base Activity";
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
      extendBody: true,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Drawer(
            child: ListView(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ac_unit,
                    size: 100,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Aminul Islam Shaheen",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage("assets/images/home.png"), size: 30),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  int index = 0;
                  _pageIndex = index;
                  getAppBarTitle(index);
                  Navigator.pop(context);
                });
                // print(widgetOptions.elementAt(_pageIndex));
              },
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage("assets/images/edit.png"), size: 30),
              title: Text(
                'Edit',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  int index = 1;
                  _pageIndex = index;
                  getAppBarTitle(index);
                  Navigator.pop(context);
                });
                // print(widgetOptions.elementAt(_pageIndex));
              },
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage("assets/images/delete.png"), size: 30),
              title: Text(
                'Delete',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  int index = 2;
                  _pageIndex = index;
                  getAppBarTitle(index);
                  Navigator.pop(context);
                });
                // print(widgetOptions.elementAt(_pageIndex));
              },
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage("assets/images/settings.png"), size: 30),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  int index = 3;
                  _pageIndex = index;
                  getAppBarTitle(index);
                  Navigator.pop(context);
                });
                // print(widgetOptions.elementAt(_pageIndex));
              },
            ),
            ListTile(
              leading:
                  ImageIcon(AssetImage("assets/images/user.png"), size: 30),
              title: Text(
                'profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  int index = 4;
                  _pageIndex = index;
                  getAppBarTitle(index);
                  Navigator.pop(context);
                });
                // print(widgetOptions.elementAt(_pageIndex));
              },
            ),
          ],
        )),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
     // backgroundColor: Colors.white,

      bottomNavigationBar: CurvedNavigationBar(
        items: [
          ImageIcon(
            AssetImage("assets/images/home.png"),
            size: _pageIndex == 0 ? 25 : 30,
            color: Colors.white,
          ),
          ImageIcon(AssetImage("assets/images/edit.png"),
              size: _pageIndex == 1 ? 25 : 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/delete.png"),
              size: _pageIndex == 2 ? 25 : 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/settings.png"),
              size: _pageIndex == 3 ? 25 : 30, color: Colors.white),
          ImageIcon(AssetImage("assets/images/user.png"),
              size: _pageIndex == 4 ? 25 : 30, color: Colors.white),
        ],
        color: Theme.of(context).primaryColor,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        height: 65,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
            getAppBarTitle(index);
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

  void getAppBarTitle(int index) {
    switch (index) {
      case 0:
        title = "Home";
        return;
      case 1:
        title = "Edit";
        return;
      case 2:
        title = "Delete";
        return;
      case 3:
        title = "Settings";
        return;
      case 4:
        title = "Profile";
        return;
      default :
        title = "Home";
    }
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
