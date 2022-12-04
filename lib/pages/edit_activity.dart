import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';
import '../custom_icon/svg_icons.dart';

class EditActivity extends StatelessWidget {
  EditActivity({Key? key}) : super(key: key);

  List<String?> listOfString = ["Apple ","Juice","Banana","Mango","Egg","Jewel","Vi","Ami","Nai "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          children: [


            Align(
              alignment: Alignment.centerLeft,
                child: Text(("Dynamic Item using List..."),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(children: List.generate(listOfString.length, (index) => InkWell(
                onTap: (){
                  log("${listOfString[index]}");
                },
                child: Container(
                    // color: index%2==0?Colors.green: Colors.red,

                  margin: EdgeInsets.only(left: 15, top: 15),
                  // height: 150,
                  // width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffEEF4F6),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://thumbs.dreamstime.com/b/whole-avocado-leaves-cut-half-isolated-white-background-seed-as-package-design-element-61016823.jpg",
                                height: 150,
                                width: 130,
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Text(
                        "Avocado",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Pure Water",
                        style:
                        TextStyle(fontSize: 8, color: Colors.black26),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$21.9",
                            style: TextStyle(color: Color(0xff80B3A4)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "200g",
                            style: TextStyle(
                                fontSize: 12, color: Colors.black26),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),),
            ),

            SizedBox(height: 50,),

            Align(alignment: Alignment.centerLeft,
                child: Text(("Static Item..."),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold), )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://thumbs.dreamstime.com/b/whole-avocado-leaves-cut-half-isolated-white-background-seed-as-package-design-element-61016823.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1TdxsZSTUbsK7YuHTOLMHAcMfwG9HcWnPA&usqp=CAU",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://image.shutterstock.com/image-photo/group-lemons-leaves-isolated-on-260nw-1413732308.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://thumbs.dreamstime.com/b/whole-avocado-leaves-cut-half-isolated-white-background-seed-as-package-design-element-61016823.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1TdxsZSTUbsK7YuHTOLMHAcMfwG9HcWnPA&usqp=CAU",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://image.shutterstock.com/image-photo/group-lemons-leaves-isolated-on-260nw-1413732308.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://thumbs.dreamstime.com/b/whole-avocado-leaves-cut-half-isolated-white-background-seed-as-package-design-element-61016823.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1TdxsZSTUbsK7YuHTOLMHAcMfwG9HcWnPA&usqp=CAU",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    // height: 150,
                    // width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEEF4F6),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://image.shutterstock.com/image-photo/group-lemons-leaves-isolated-on-260nw-1413732308.jpg",
                                  height: 150,
                                  width: 130,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        Text(
                          "Avocado",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Pure Water",
                          style:
                          TextStyle(fontSize: 8, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$21.9",
                              style: TextStyle(color: Color(0xff80B3A4)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "200g",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 75,),
          ],
        ),
      ),
    );
  }
}
