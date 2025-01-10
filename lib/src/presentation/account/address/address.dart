import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../presentation.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List<Map<String, String>> addresses = [];

  @override
  void initState() {
    super.initState();
    _loadAddresses();
  }

  Future<void> _saveAddresses() async {
    final prefs = await SharedPreferences.getInstance();
    final String encodedData = jsonEncode(addresses);
    await prefs.setString('addresses', encodedData);
  }

  Future<void> _loadAddresses() async {
    final prefs = await SharedPreferences.getInstance();
    final String? encodedData = prefs.getString('addresses');
    if (encodedData != null) {
      final List<dynamic> decodedData = jsonDecode(encodedData);
      setState(() {
        addresses =
            decodedData.map((e) => Map<String, String>.from(e)).toList();
      });
    }
  }

  void _updateAddress(int index, String title, String address) {
    setState(() {
      addresses[index] = {'title': title, 'address': address};
    });
    _saveAddresses();
  }

  void _addAddress(String title, String address) {
    setState(() {
      addresses.add({'title': title, 'address': address});
    });
    _saveAddresses();
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
          'Addresses',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewAddress(onSave: _addAddress),
                ),
              );
            },
            color: Color(0xffFF5E00),
            icon: Icon(
              Icons.add,
              size: 22.sp,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 25.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...addresses.asMap().entries.map(
                (entry) {
                  final index = entry.key;
                  final address = entry.value;
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditAddress(
                                title: address['title']!,
                                address: address['address']!,
                                onUpdate: (updatedTitle, updatedAddress) {
                                  _updateAddress(
                                      index, updatedTitle, updatedAddress);
                                },
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/svg21.svg'),
                            SizedBox(
                              width: 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  address['title']!,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff6D3805),
                                  ),
                                ),
                                Text(
                                  address['address']!,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff6D3805),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff804F1E),
                              size: 16.sp,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Divider(
                        thickness: 2.5.sp,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
