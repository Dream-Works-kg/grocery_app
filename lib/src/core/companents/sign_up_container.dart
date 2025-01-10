import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      height: 6.h,
      decoration: BoxDecoration(
        color: Color(0xffFF5E00), // Rangni to'g'ri qo'yish
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          "Sign Up", // Matnni to'g'ri yozish
          style: TextStyle(
            color: Colors.white, // Rangni to'g'ri qo'yish
            fontSize: 17.sp,
          ),
        ),
      ),
    );
  }
}
