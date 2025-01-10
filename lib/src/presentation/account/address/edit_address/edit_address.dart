import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditAddress extends StatelessWidget {
  final String title;
  final String address;
  final Function(String, String) onUpdate; // Callback для обновления

  const EditAddress({
    required this.title,
    required this.address,
    required this.onUpdate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController =
        TextEditingController(text: title);
    final TextEditingController addressController =
        TextEditingController(text: address);

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
          'Edit Address',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Address Title',
                hintStyle: TextStyle(
                  color: Color(0xffB89478),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name Surname',
                hintStyle: TextStyle(
                  color: Color(0xffB89478),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'City',
                hintStyle: TextStyle(
                  color: Color(0xffB89478),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: 'Address',
                hintStyle: TextStyle(
                  color: Color(0xffB89478),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                onUpdate(
                  titleController.text,
                  addressController.text,
                ); // Вызываем callback
                Navigator.pop(context);
              },
              child: Container(
                height: 7.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFF5E00),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Update Address',
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
