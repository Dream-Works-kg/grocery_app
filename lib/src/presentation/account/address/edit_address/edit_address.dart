import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditAddress extends StatelessWidget {
  const EditAddress({super.key});

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
        title: Padding(
          padding: EdgeInsets.only(top: 25.sp),
          child: Text(
            'Edit Addresses',
            style: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
