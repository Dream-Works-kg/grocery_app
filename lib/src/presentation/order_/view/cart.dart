import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
    required this.fruitName,
    required this.imagePath,
    required this.price,
  });

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
                "Cart",
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
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
                  "CheckOut",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 17.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
