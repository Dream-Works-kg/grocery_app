import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'profile_export.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isNotificationEnabled = true;

  Widget buildRow({
    required String iconPath,
    required String label,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(width: 3.w),
          Text(
            label,
            style: TextStyle(
              color: Color(0xff804F1E),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          if (trailing != null) trailing,
        ],
      ),
    );
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
        title: Padding(
          padding: EdgeInsets.only(top: 25.sp),
          child: Text(
            'Profile',
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
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 30.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRow(
              iconPath: 'assets/svg/svg5.svg',
              label: 'Edit Profile',
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff804F1E),
                size: 16.sp,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              ),
            ),
            SizedBox(height: 3.h),
            buildRow(
              iconPath: 'assets/svg/svg6.svg',
              label: 'Change Password',
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff804F1E),
                size: 16.sp,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePassword(),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            buildRow(
              iconPath: 'assets/svg/svg7.svg',
              label: 'My Cards',
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff804F1E),
                size: 16.sp,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCards(),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'App Settings',
              style: TextStyle(
                color: Color(0xffFF5E00),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 3.h),
            buildRow(
              iconPath: 'assets/svg/svg8.svg',
              label: 'Notifications',
              trailing: Switch(
                value: isNotificationEnabled,
                onChanged: (value) {
                  setState(() {
                    isNotificationEnabled = value;
                  });
                },
                activeColor: Color(0xffFF5E00),
              ),
            ),
            SizedBox(height: 3.h),
            buildRow(
              iconPath: 'assets/svg/svg9.svg',
              label: 'Language',
              trailing: Row(
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                      color: Color(0xff906233),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff804F1E),
                    size: 16.sp,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            buildRow(
              iconPath: 'assets/svg/svg10.svg',
              label: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
