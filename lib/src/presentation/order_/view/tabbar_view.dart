import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/search_bar.dart';
import 'package:grocery_app/src/presentation/order_/view/feiut.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xffFF5E00),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            children: [
              Text(
                "Fruits",
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2.h),
              Searchwidget(),
              TabBar(
                tabs: [
                  Tab(text: 'Fruits'),
                  Tab(text: 'Vegtables'),
                  Tab(text: 'Meat'),
                  Tab(text: 'Fish'),
                  Tab(text: 'Sea'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Feiut(index: 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
