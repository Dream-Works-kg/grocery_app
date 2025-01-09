import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/svg/svg15.svg',
                height: 2.5.h,
                width: 2.5.w,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'March 5, 2019',
                style: TextStyle(
                  color: Color(0xff6D3805),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Text(
                '6:30 pm',
                style: TextStyle(
                  color: Color(0xffF37A20),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/im3.png',
                height: 40.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Align(
                          heightFactor: -0,
                          child: SvgPicture.asset('assets/svg/svg16.svg')),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        'We are packin your items...',
                        style: TextStyle(
                          color: Color(0xff6D3805),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/svg17.svg'),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        'Your order is delivering to\nyour location...',
                        style: TextStyle(
                          color: Color(0xff6D3805),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/svg18.svg'),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Your order is received.',
                        style: TextStyle(
                          color: Color(0xff6D3805),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
