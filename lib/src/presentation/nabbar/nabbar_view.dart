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
    // const Account(),
    SizedBox(),
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
                color:
                    _currentIndex == 0 ? Color(0xffFF5E00) : Color(0xff6D3805),
              ),
              label: "Shop", // Har doim ko'rsatiladi
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.saved_search_rounded,
                size: 22.sp,
                color:
                    _currentIndex == 1 ? Color(0xffFF5E00) : Color(0xff6D3805),
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color:
                    _currentIndex == 2 ? Color(0xffFF5E00) : Color(0xff6D3805),
                size: 22.sp,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 22.sp,
                color:
                    _currentIndex == 3 ? Color(0xffFF5E00) : Color(0xff6D3805),
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 22.sp,
                color:
                    _currentIndex == 4 ? Color(0xffFF5E00) : Color(0xff6D3805),
              ),
              label: "Account",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xffFF5E00), // Tanlangan ikonkani rangi
          unselectedItemColor: Color(0xff6D3805), // Tanlanmagan ikonkani rangi
          showUnselectedLabels: true, // Tanlanmagan holatda ham matn ko'rsatish
        ),
      ),
    );
  }
}
