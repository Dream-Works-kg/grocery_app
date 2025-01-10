import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/phone_input_field.dart';
import 'package:grocery_app/src/core/companents/sign_up_container.dart';
import 'package:grocery_app/src/presentation/nabbar/nabbar_view.dart';
// import 'package:grocery_app/src/presentation/order_/view/shop.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_up.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final bool isVisibl = false;

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
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(
                "assets/images/Group 7040.png",
                width: 95.w,
                height: 50.h,
                fit: BoxFit.contain,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter your phone number and \npassword to access your account",
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              PhoneInputField(),
              SizedBox(height: 2.h),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 221, 221),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 3.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Color(0xffAC8E71),
                            fontSize: 17.sp,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility,
                              color: Color(0xff7F4E1D),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgote Password",
                  style: TextStyle(
                    color: Color.fromARGB(187, 255, 94, 0),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NabbarView(),
                    ),
                  );
                },
                child: SignUpContainer(),
              ),
              SizedBox(height: 1.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  "Don’t have an account? Sign Up",
                  style: TextStyle(
                    color: Color.fromARGB(208, 0, 0, 0),
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
