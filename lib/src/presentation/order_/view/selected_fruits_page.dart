import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectedFruitsPage extends StatefulWidget {
  const SelectedFruitsPage({
    super.key,
    required this.imagePath,
    required this.fruitName,
    required this.price,
  });

  final String imagePath;
  final String fruitName;
  final String price;

  @override
  State<SelectedFruitsPage> createState() => _SelectedFruitsPageState();
}

class _SelectedFruitsPageState extends State<SelectedFruitsPage> {
  int count = 0;
  int count3 =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xffFF5E00),
                      ),
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/Group 242.png",
                  ),
                ],
              ),
              Image.asset(
                widget.imagePath,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.fruitName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.price,
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Golden Ripe Alphonsa mangoes delivered to your house in the most hygenic way ever... Best for eating plain but can also be made into shakes and cakes.",
                style: TextStyle(
                  color: Color(0xff6D3805),
                  fontSize: 16.sp,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 70.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff6d3805),
                          offset: Offset(1, 1),
                        ),
                      ],
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count--;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 26.sp,
                          ),
                        ),
                        Text(
                          "$count",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 26.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_sharp,
                      size: 26.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Container(
                width: 90.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xffFF5E00),
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Add To cart",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 17.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
