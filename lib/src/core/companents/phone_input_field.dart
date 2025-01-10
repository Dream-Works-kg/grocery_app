import 'package:flutter/material.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 225, 221, 221),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Image.asset("assets/images/SE-Sweden-Flag-icon 3.png"),
          hintText: "Phone Number",
          hintStyle: TextStyle(
            color: Color(0xffAC8E71),
          ),
        ),
      ),
    );
  }
}
