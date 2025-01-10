import 'package:flutter/material.dart';
import 'package:grocery_app/src/presentation/registration/ui/ui.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_in.dart';
import 'package:grocery_app/src/presentation/registration/view/sign_up.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: SizedBox(
                width: 82.w,
                child: Image.asset(
                  "assets/images/Illustration.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Realax and shop",
              style: TextStyle(
                color: Color(0xff7F4E1D),
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "     Shop online and get grocories\n delivered from stores to your home\n               in as fast as 1 hour .",
              style: TextStyle(
                color: Color(0xff7F4E1D),
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.sp),
              child: SizedBox(
                height: 15.h,
                width: double.infinity,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: colorcontainer.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        }
                        if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: 85.w,
                        margin: EdgeInsets.all(5),
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: colorcontainer[index],
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Color(0xffFF5E00),
                            width: 0.3.w,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            textcenter[index],
                            style: TextStyle(
                              color: colortext[index],
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
