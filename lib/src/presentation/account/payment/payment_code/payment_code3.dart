import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentCode3 extends StatelessWidget {
  const PaymentCode3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.5.h,
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
              'Order Summary',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '\$137.00',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Text(
                  'Tax',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '\$4.50',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Text(
                  'In-Store Pick Up',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '\$00.00',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  '\$141.50',
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
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

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFF5E00),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          'CheckOut \$141.50',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
