import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xffFF5E00),
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 35.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '+46 707 07 07',
                hintStyle: TextStyle(
                  color: Color(0xff906233),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xffF5F5F5),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15.sp,
                  horizontal: 15.sp,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/im1.png',
                        width: 24.sp,
                        height: 24.sp,
                      ),
                      SizedBox(width: 5.sp),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff906233),
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 4.h,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'mati egh',
                hintStyle: TextStyle(
                  color: Color(0xff906233),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xffF5F5F5),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.sp, horizontal: 15.sp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  (context),
                );
              },
              child: Container(
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFF5E00),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Update Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
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
