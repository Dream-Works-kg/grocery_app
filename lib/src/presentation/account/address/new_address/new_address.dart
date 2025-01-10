import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewAddress extends StatefulWidget {
  final Function(String, String) onSave;

  const NewAddress({required this.onSave, super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

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
          'New Addresses',
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
            SizedBox(
              height: 3.h,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                widget.onSave(
                  titleController.text,
                  addressController.text,
                );
                Navigator.pop(
                  (context),
                );
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
                    'Add',
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
