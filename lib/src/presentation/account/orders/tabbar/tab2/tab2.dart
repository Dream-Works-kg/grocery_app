import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/svg/svg14.svg'),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order #345',
                    style: TextStyle(
                      color: Color(0xff804F1E),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                      color: Color(0xff5EC401),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'October 26, 2014',
                    style: TextStyle(
                      color: Color(0xff804F1E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '\$700',
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 2.sp,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/svg/svg14.svg'),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order #346',
                    style: TextStyle(
                      color: Color(0xff804F1E),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Cancelled',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'October 14, 2016',
                    style: TextStyle(
                      color: Color(0xff804F1E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '\$452',
                style: TextStyle(
                  color: Color(0xffFF5E00),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 2.sp,
          ),
        ],
      ),
    );
  }
}
