import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../presentation.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
          'Profile',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InStorePickUp(),
              SizedBox(height: 20.sp),
              SearchBar(),
              SizedBox(height: 20.sp),
              PaymentCode(),
              SizedBox(height: 20.sp),
              SeeItems(),
              SizedBox(height: 20.sp),
              PaymentCode2(),
              SizedBox(height: 20.sp),
              PaymentCode3(),
              SizedBox(height: 5.h),
              CheckoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class InStorePickUp extends StatelessWidget {
  const InStorePickUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'In-Store Pick Up',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Text(
              'FREE',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 1.h),
        Row(
          children: [
            Text(
              'Some Stores May Be Temporarily\nUnavalable.',
              style: TextStyle(
                color: Color(0xff6D3805),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Icon(
              Icons.expand_more_outlined,
              color: Color(0xff6D3805),
              size: 22.sp,
            ),
          ],
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xffB89478),
        ),
        hintText: 'Search For Town, Street, Zip Code...',
        hintStyle: TextStyle(
          color: Color(0xffB89478),
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
