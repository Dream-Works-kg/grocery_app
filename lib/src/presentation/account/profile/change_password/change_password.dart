import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isPasswordVisible = false;

  bool get isButtonActive {
    return oldPasswordController.text.isNotEmpty &&
        newPasswordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    oldPasswordController.addListener(() => setState(() {}));
    newPasswordController.addListener(() => setState(() {}));
    confirmPasswordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
          'Change Password',
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
              controller: oldPasswordController,
              obscureText: !isPasswordVisible,
              decoration: _buildInputDecoration('Old Password'),
            ),
            SizedBox(height: 4.h),
            TextField(
              controller: newPasswordController,
              obscureText: !isPasswordVisible,
              decoration: _buildInputDecoration('New Password'),
            ),
            SizedBox(height: 1.h),
            TextField(
              controller: confirmPasswordController,
              obscureText: !isPasswordVisible,
              decoration: _buildInputDecoration('Confirm Password'),
            ),
            Spacer(),
            GestureDetector(
              onTap: isButtonActive
                  ? () {
                      Navigator.pop(context);
                    }
                  : null,
              child: Container(
                height: 7.5.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isButtonActive ? Color(0xffFF5E00) : Colors.grey,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Update Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.5.h),
            Container(
              height: 7.5.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Color(0xffFF5E00),
                ),
              ),
              child: Center(
                child: Text(
                  'Back To Sign In',
                  style: TextStyle(
                    color: Color(0xffFF5E00),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Color(0xffAC8E71),
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: Color(0xffF5F5F5),
      contentPadding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 15.sp),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.sp),
        borderSide: BorderSide.none,
      ),
      prefixIcon: Icon(
        Icons.lock_outline,
        color: Color(0xffFF5E00),
      ),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
        child: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Color(0xffFF5E00),
        ),
      ),
    );
  }
}
