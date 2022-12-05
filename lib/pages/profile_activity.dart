import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sslcommerz/model/SSLCAdditionalInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCEMITransactionInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/General.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/SSLCProductInitializer.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../custom_icon/svg_icons.dart';

class ProfileActivity extends StatelessWidget {
  ProfileActivity({Key? key}) : super(key: key);

  var _key = GlobalKey<FormState>();
  dynamic formData = {"multicard" : "Multicard", "aisja638d9c0feee50" : "Aminul","aisja638d9c0feee50" : "Password", "amount" : 10 };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SSLCommerz'),
        ),
        body: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "testbox",
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Store ID",
                      ),
                      validator: (value) {
                        if (value != null)
                          return "Please input store id";
                        else
                          return null;
                      },
                      onSaved: (value) {
                        formData['store_id'] = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "qwerty",
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Store password",
                      ),
                      validator: (value) {
                        if (value != null)
                          return "Please input store password";
                        else
                          return null;
                      },
                      onSaved: (value) {
                        formData['store_password'] = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Phone number",
                      ),
                      onSaved: (value) {
                        formData['phone'] = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: "10",
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Payment amount",
                      ),
                      validator: (value) {
                        if (value != null)
                          return "Please input amount";
                        else
                          return null;
                      },
                      onSaved: (value) {
                        formData['amount'] = double.parse(value!);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Enter multi card",
                      ),
                      onSaved: (value) {
                        formData['multicard'] = value;
                      },
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Pay now"),
                    onPressed: () {
                      if (_key.currentState != null) {
                        _key.currentState?.save();
                        sslCommerzGeneralCall();
                        // sslCommerzCustomizedCall();

                        jsonConvert();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> sslCommerzGeneralCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
        initializer: SSLCommerzInitialization(
          //Use the ipn if you have valid one, or it will fail the transaction.
            ipn_url: "www.ipnurl.com",
            multi_card_name: 'multicard',
            currency: SSLCurrencyType.BDT,
            product_category: "Food",
            sdkType: SSLCSdkType.TESTBOX,
            store_id: 'aisja638d9c0feee50',
            store_passwd: 'aisja638d9c0feee50@ssl',
            total_amount: 10.0,
            tran_id: "1231321321321312"));
    sslcommerz.payNow();
  }

  Future<void> sslCommerzCustomizedCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
        initializer: SSLCommerzInitialization(
          //Use the ipn if you have valid one, or it will fail the transaction.
            ipn_url: "www.ipnurl.com",
            multi_card_name: formData['multicard'],
            currency: SSLCurrencyType.BDT,
            product_category: "Food",
            sdkType: SSLCSdkType.TESTBOX,
            store_id: formData['aisja638d9c0feee50'],
            store_passwd: formData['aisja638d9c0feee50@ssl'],
            total_amount: formData['amount'],
            tran_id: "1231321321321312"));
    sslcommerz
        .addEMITransactionInitializer(
        sslcemiTransactionInitializer: SSLCEMITransactionInitializer(
            emi_options: 1, emi_max_list_options: 3, emi_selected_inst: 2))
        .addShipmentInfoInitializer(
        sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
            shipmentMethod: "yes",
            numOfItems: 5,
            shipmentDetails: ShipmentDetails(
                shipAddress1: "Ship address 1",
                shipCity: "Faridpur",
                shipCountry: "Bangladesh",
                shipName: "Ship name 1",
                shipPostCode: "7860")))
        .addCustomerInfoInitializer(
        customerInfoInitializer: SSLCCustomerInfoInitializer(
            customerState: "Chattogram",
            customerName: "Abu Sayed Chowdhury",
            customerEmail: "sayem227@gmail.com",
            customerAddress1: "Anderkilla",
            customerCity: "Chattogram",
            customerPostCode: "200",
            customerCountry: "Bangladesh",
            customerPhone: formData['phone']))
        .addProductInitializer(
        sslcProductInitializer:
        // ***** ssl product initializer for general product STARTS*****
        SSLCProductInitializer(
            productName: "Water Filter",
            productCategory: "Widgets",
            general: General(
                general: "General Purpose",
                productProfile: "Product Profile"))
    )
        .addAdditionalInitializer(
        sslcAdditionalInitializer: SSLCAdditionalInitializer(
            valueA: "value a ",
            valueB: "value b",
            valueC: "value c",
            valueD: "value d"));
    var result = await sslcommerz.payNow();
    if (result is PlatformException) {
      print("the response is: ---->");
    } else {
      SSLCTransactionInfoModel model = result;
      Fluttertoast.showToast(
          msg: "Transaction successful: Amount ${model.amount} TK",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void jsonConvert() {
    var myJson = {
        "title": "one",
        "jewel": "two",
        "aminul": "three"
    };

    var decodedJson = json.decode(myJson.toString());
    print(decodedJson['jewel']);
  }
}
