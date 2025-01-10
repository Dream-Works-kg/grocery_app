import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentCode2 extends StatelessWidget {
  const PaymentCode2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.5.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFF4E9),
        borderRadius: BorderRadius.circular(20),
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
              'Payment Method',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                SvgPicture.asset('assets/svg/svg13.svg'),
                SizedBox(width: 4.w),
                Text(
                  'Apple Pay',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.check,
                  color: Color(0xff58A919),
                  size: 21.sp,
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            Divider(),
            SizedBox(height: 2.h),
            Row(
              children: [
                SvgPicture.asset('assets/svg/svg20.svg'),
                SizedBox(width: 4.w),
                Text(
                  'Cash on delivery',
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
      ),
    );
  }
}
