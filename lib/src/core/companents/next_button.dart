import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 7.h,
      decoration: BoxDecoration(
        color: Color(0xffFF5E00),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
