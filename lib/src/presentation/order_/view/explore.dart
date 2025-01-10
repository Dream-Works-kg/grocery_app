// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/search_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Explore extends StatelessWidget {
  final List<String> imageList;
  final int currentIndex;

  const Explore(
      {super.key, required this.imageList, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 4.h),
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xffFF5E00),
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Searchwidget(),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                height: 100.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 25,
                  ),
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
