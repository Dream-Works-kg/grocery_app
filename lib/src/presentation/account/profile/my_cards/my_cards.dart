import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'new_card/new_card.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  List<String> savedCardNumbers = [];

  @override
  void initState() {
    super.initState();
    _loadSavedCards();
  }

  Future<void> _loadSavedCards() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      savedCardNumbers = prefs.getStringList('savedCardNumbers') ?? [];
    });
  }

  Future<void> _saveCards() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('savedCardNumbers', savedCardNumbers);
  }

  void _addCard(String cardNumber) {
    setState(() => savedCardNumbers.add(cardNumber));
    _saveCards();
  }

  void _deleteCard(int index) {
    setState(() => savedCardNumbers.removeAt(index));
    _saveCards();
  }

  String formatCardNumber(String cardNumber) => cardNumber.length >= 16
      ? '${cardNumber.substring(0, 4)} **** **** ${cardNumber.substring(cardNumber.length - 4)}'
      : 'Invalid card number';

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
            'My Cards',
            style: TextStyle(
                color: Color(0xffFF5E00),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewCard(onAddCard: _addCard),
              ),
            ),
            icon: Icon(
              Icons.add,
              size: 22.sp,
              color: Color(0xffFF5E00),
            ),
          ),
        ],
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: savedCardNumbers.isEmpty
          ? Center(
              child: Column(
                children: [
                  Image.asset('assets/images/im2.png'),
                  Text(
                    'No Saved Card',
                    style: TextStyle(
                        color: Color(0xff6D3805),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'You can save your card info to\n make purchase easier, faster.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff6D3805),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: savedCardNumbers.length,
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.sp),
              itemBuilder: (context, index) {
                final cardNumber = savedCardNumbers[index];
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/svg12.svg',
                            height: 4.h, width: 4.h),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Card',
                                style: TextStyle(
                                    color: Color(0xff6D3805),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                formatCardNumber(cardNumber),
                                style: TextStyle(
                                    color: Color(0xff6D3805),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _deleteCard(index),
                          child: Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                            child: Icon(Icons.delete,
                                color: Colors.white, size: 3.h),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2.5.sp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                );
              },
            ),
    );
  }
}
