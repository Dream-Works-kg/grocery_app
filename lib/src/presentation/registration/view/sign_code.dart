import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/sign_up_text.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_in.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignCode extends StatelessWidget {
  const SignCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SignUpText(),
              Image.asset(
                "assets/images/Group 7040 (1).png",
                width: 95.w,
                height: 55.h,
                fit: BoxFit.contain,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Verification Code",
                  style: TextStyle(
                    color: Color(0xff7F4E1D),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    height: 2,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "We have sent SMS to:\n046 XXX XX XX",
                  style: TextStyle(
                    color: Color(0xff7F4E1D),
                    fontSize: 16.sp,
                  ),
                ),
              ),
              Text(
                "_ _ _ _ _",
                style: TextStyle(
                  color: Color(0xff7F4E1D),
                  fontSize: 40.sp,
                  letterSpacing: 4,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: Container(
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
                ),
              ),
              SizedBox(height: 3.h),
            ],
          ),
        ),
      ),
    );
  }
}
