import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Favoride extends StatelessWidget {
  const Favoride(
      {super.key,
      required this.imagePath,
      required this.fruitName,
      required this.price});

  final String imagePath;
  final String fruitName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        padding: EdgeInsets.symmetric(vertical: 15.sp),    
        child: Column(
          children: [
            Center(
              child: Text(
                "Favorite",
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Image.asset("assets/images/Group 260.png"),
            SizedBox(height: 2.h),
            Text(
              "Your heart is empty",
              style: TextStyle(
                color: Color(0xff6D3805),
                fontWeight: FontWeight.w600,
                fontSize: 19.sp,
                height: 2,
              ),
            ),
            Text(
              "Start fall in love with some good\n                      goods ",
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
              ),
            ),
            Spacer(),
            Container(
              width: 90.w,
              height: 7.h,
              decoration: BoxDecoration(
                color: Color(0xffFF5E00),
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Center(
                child: Text(
                  "Start shoping",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 17.sp,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(imagePath),
                Column(
                  children: [
                    Text(fruitName),
                  ],
                ),
                Text(price),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
