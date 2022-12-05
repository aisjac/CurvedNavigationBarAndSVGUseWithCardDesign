import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCEMITransactionInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';

import '../custom_icon/svg_icons.dart';

class SettingsActivity extends StatelessWidget {
  const SettingsActivity({Key? key}) : super(key: key);


  Future<void> sslCommerzGeneralCall() async {

    Sslcommerz sslcommerz = Sslcommerz(
        initializer: SSLCommerzInitialization(
          //   ipn_url: "www.ipnurl.com",
            multi_card_name: "visa,master,bkash",
            currency: SSLCurrencyType.BDT,
            product_category: "Food",
            sdkType: SSLCSdkType.TESTBOX,
            store_id: "aisja638d9c0feee50",
            store_passwd: "aisja638d9c0feee50@ssl",
            total_amount: 50.0,
            tran_id: "custom_transaction_id"));
    sslcommerz.payNow();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: () {
        sslCommerzGeneralCall();
      }, child: Text("Pay"),)),
    );
  }
}

