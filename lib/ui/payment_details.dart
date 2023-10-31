import 'dart:ui';

import 'package:e_app/constant/app_color.dart';
import 'package:e_app/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class paymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => splashScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.deep_green,
            )),
        centerTitle: true,
        title: const Text(
          "Payment Details",
          style: TextStyle(color: AppColors.deep_green),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "1. Credit Card/ Debit Card",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "2. Cash on Delivery",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
