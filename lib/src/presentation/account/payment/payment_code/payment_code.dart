import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentCode extends StatelessWidget {
  const PaymentCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFF4E9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffFFE6CC),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Goteborg',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                Text(
                  'Arkaden',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff804F1E),
                  size: 16.sp,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              '1.4 MI',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 1.5.h),
            Divider(
              thickness: 2.5.sp,
            ),
            SizedBox(height: 1.5.h),
            Text(
              'Kungsbacka',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                Text(
                  'kungsmassan',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff804F1E),
                  size: 16.sp,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              '17 MI',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeeItems extends StatelessWidget {
  const SeeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFF4E9),
        border: Border.all(
          color: Color(0xffFFE6CC),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Row(
          children: [
            SvgPicture.asset('assets/svg/svg19.svg'),
            SizedBox(width: 3.w),
            Text(
              'See Items',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff804F1E),
              size: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}
