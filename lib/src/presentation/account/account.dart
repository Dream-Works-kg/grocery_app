import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:grocery_app/src/presentation/presentation.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'icon': 'assets/svg/svg1.svg', 'label': 'Profile', 'page': Profile()},
      {'icon': 'assets/svg/svg2.svg', 'label': 'Orders', 'page': Orders()},
      {'icon': 'assets/svg/svg3.svg', 'label': 'Address', 'page': Address()},
      {'icon': 'assets/svg/svg4.svg', 'label': 'Payment', 'page': Payment()},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xffFF5E00)),
        title: Padding(
          padding: EdgeInsets.only(top: 25.sp),
          child: Text(
            'Account',
            style: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 35.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: menuItems
              .map(
                (item) => Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => item['page'] as Widget),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          item['icon'] as String,
                          height: 2.5.h,
                          width: 2.5.w,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          item['label'] as String,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
