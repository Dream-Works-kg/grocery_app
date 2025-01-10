import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Color(0xffFF5E00),
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
