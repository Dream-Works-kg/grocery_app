import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/next_button.dart';
import 'package:grocery_app/src/core/companents/phone_input_field.dart';
import 'package:grocery_app/src/core/companents/sign_up_text.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_in.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_pass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
            Icons.arrow_back_ios_new,
            color: Color(0xffFF5E00),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SignUpText(),
              Image.asset(
                "assets/images/Group 7037.png",
                width: 95.w,
                height: 40.h,
                fit: BoxFit.contain,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Color.fromARGB(255, 225, 221, 221),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "   Name Surname",
                    // hintTextAlign: TextAlign.end,
                    hintStyle: TextStyle(
                      color: Color(0xffAC8E71),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              PhoneInputField(),
              SizedBox(height: 1.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "We need to verify you. We will send you a\none time verification code.",
                  style: TextStyle(
                    color: Color(0xff7F4E1D),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignPass(),
                    ),
                  );
                },
                child: NextButton(),
              ),
              SizedBox(height: 1.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: Text(
                  "Already have an account? Login",
                  style: TextStyle(
                    color: Color.fromARGB(213, 0, 0, 8),
                    fontWeight: FontWeight.w400,
                    fontSize: 17.5.sp,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }
}
