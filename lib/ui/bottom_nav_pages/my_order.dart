import 'package:e_app/constant/app_color.dart';
import 'package:e_app/ui/payment_details.dart';
import 'package:e_app/widgets/fetch_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myOrder extends StatefulWidget {
  @override
  State<myOrder> createState() => _myOrderState();
}

class _myOrderState extends State<myOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: fetchData("users-order-items"),
      ),
      floatingActionButton: ElevatedButton(
        child: const Text("Payment"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => paymentDetails()));
        },
        style: ElevatedButton.styleFrom(
          primary: AppColors.deep_green,
          elevation: 3,
        ),
      ),
    );
  }
}
