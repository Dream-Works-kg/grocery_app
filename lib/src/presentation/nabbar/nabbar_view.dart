import 'package:flutter/material.dart';
import 'package:grocery_app/src/presentation/order_/view/cart.dart';
import 'package:grocery_app/src/presentation/order_/view/explore.dart';
import 'package:grocery_app/src/presentation/order_/view/favoride.dart';
import 'package:grocery_app/src/presentation/order_/view/shop.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NabbarView extends StatefulWidget {
  const NabbarView({super.key});

  @override
  State<NabbarView> createState() => _NabbarViewState();
}

class _NabbarViewState extends State<NabbarView> {
  int _currentIndex = 0;

  List<Widget> viewnabbar = [
    const Shop(),
    const Explore(
      currentIndex: 0,
      imageList: [],
    ),
    const Cart(
      fruitName: "",
      imagePath: "",
      price: "",
    ),
    Favoride(
      fruitName: "",
      imagePath: "",
      price: "",
    ),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewnabbar[_currentIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                size: 22.sp,
                color: Color(0xff6D3805),
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.saved_search_rounded,
                size: 22.sp,
                color: Color(0xff6D3805),
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xff6D3805),
                size: 22.sp,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 22.sp,
                color: Color(0xff6D3805),
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 22.sp,
                color: Color(0xff6D3805),
              ),
              label: "Account",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
