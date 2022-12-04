import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_icon/svg_icons.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF9FAFC),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15, right: 6),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff80B3A4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 15),
                    child: Text(
                      "City",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 32,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffF1F2F4)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "Search",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 15),
                    child: Icon(
                      Icons.moped_outlined,
                      color: Color(0xff80B3A4),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(
                        "1hour",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff80B3A4),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 20, top: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    "https://img.freepik.com/free-vector/healthy-vegetable-menu-promotion-offer-web-banner-template-premium-vector_455875-35.jpg?size=626&ext=jpg",
                    height: 200,
                    width: 450,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 18),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffEEF4F6),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaEWibZ5R1Wjb2HOqyDMKiTkamqzkiUEQztg&usqp=CAU",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text("Staple")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffEEF4F6),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "http://cdn.shopify.com/s/files/1/0559/0286/3559/products/capsicum-green2_grande.jpg?v=1633953647",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text("Vegetable")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffEEF4F6),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1568966299181-bb7282cc84f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3RyYXdiZXJyeXxlbnwwfHwwfHw%3D&w=1000&q=80",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text("Fruit")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffEEF4F6),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlbGc3d56L3pT3SpCBW9PXGs3s6ay0Vsdk7g&usqp=CAU",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text("Dessert")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 20, top: 20, bottom: 20),
                height: 80,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffDDF2E9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SHARE AND POLITE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4C9D84),
                          fontSize: 20),
                    ),
                    Text(
                      "I will pay for your expenses",
                      style: TextStyle(color: Color(0xff4C9D84), fontSize: 16),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 20),
                    child: Text(
                      "Fresh Fruit",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "More  ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward_ios_sharp,
                        size: 15, color: Colors.black54),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 15),
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEEF4F6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://thumbs.dreamstime.com/b/whole-avocado-leaves-cut-half-isolated-white-background-seed-as-package-design-element-61016823.jpg",
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 10),
                            child: Text(
                              "Avocado",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 3),
                            child: Text(
                              "Pure Water",
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black26),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17, top: 5),
                                child: Text(
                                  "\$21.9",
                                  style: TextStyle(color: Color(0xff80B3A4)),
                                ),
                              ),
                              SizedBox(
                                width: 30,
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
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEEF4F6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1TdxsZSTUbsK7YuHTOLMHAcMfwG9HcWnPA&usqp=CAU",
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 10),
                            child: Text(
                              "Raspberry",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 3),
                            child: Text(
                              "There are",
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black26),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17, top: 5),
                                child: Text(
                                  "\$32.9",
                                  style: TextStyle(color: Color(0xff80B3A4)),
                                ),
                              ),
                              SizedBox(
                                width: 30,
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
                      margin: EdgeInsets.only(left: 17, top: 15),
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEEF4F6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://image.shutterstock.com/image-photo/group-lemons-leaves-isolated-on-260nw-1413732308.jpg",
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 10),
                            child: Text(
                              "Lemon",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19, top: 3),
                            child: Text(
                              "Pure ",
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black26),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17, top: 5),
                                child: Text(
                                  "\$18.8",
                                  style: TextStyle(color: Color(0xff80B3A4)),
                                ),
                              ),
                              SizedBox(
                                width: 30,
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
      ),
    );
  }
}
