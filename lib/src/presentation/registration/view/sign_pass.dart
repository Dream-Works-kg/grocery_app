import 'package:flutter/material.dart';
import 'package:grocery_app/src/core/companents/next_button.dart';
import 'package:grocery_app/src/core/companents/sign_up_text.dart';
import 'package:grocery_app/src/presentation/registration/ui/ui.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_code.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignPass extends StatefulWidget {
  const SignPass({super.key});

  @override
  State<SignPass> createState() => _SignPassState();
}

class _SignPassState extends State<SignPass> {
  final List<bool> _isVisibleList = List.generate(2, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SignUpText(),
            Image.asset(
              "assets/images/Group 7039.png",
              width: 95.w,
              height: 40.h,
              fit: BoxFit.contain,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter the password",
                style: TextStyle(
                  color: Color(0xff7F4E1D),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  height: 2,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "For the security & safety please choose a\npassword",
                style: TextStyle(
                  color: Color(0xff7F4E1D),
                  fontSize: 16.sp,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              width: double.infinity,
              height: 20.h,
              child: ListView.builder(
                itemCount: TextFieldtext.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 225, 221, 221),
                    ),
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      obscureText: !_isVisibleList[index],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isVisibleList[index]
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xffff5e00),
                          ),
                          onPressed: () {
                            setState(() {
                              _isVisibleList[index] = !_isVisibleList[index];
                            });
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xffFF5E00),
                        ),
                        hintText: TextFieldtext[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 1.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignCode(),
                  ),
                );
              },
              child: NextButton(),
            ),
          ],
        ),
      ),
    );
  }
}
