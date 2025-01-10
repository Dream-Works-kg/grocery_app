import 'package:flutter/material.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 225, 221, 221),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Color(0xff6D3805),
            height: 2,
          ),
        ),
      ),
    );
  }
}
