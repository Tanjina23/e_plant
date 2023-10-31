// ignore_for_file: deprecated_member_use

import 'package:e_app/constant/app_color.dart';
import 'package:e_app/ui/bottom_nav_pages/cart.dart';
import 'package:e_app/ui/bottom_nav_pages/favourite.dart';
import 'package:e_app/ui/bottom_nav_pages/home.dart';
import 'package:e_app/ui/bottom_nav_pages/my_order.dart';
import 'package:e_app/ui/bottom_nav_pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
    myOrder(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "E-Plant",
          style: TextStyle(color: AppColors.deep_green),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: AppColors.deep_green,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), title: Text("Favourite")),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("My Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2_outlined),
            title: Text("My Order"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
