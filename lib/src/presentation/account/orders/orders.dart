import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'tabbar/tab2/tab2.dart';
import 'tabbar/tabbar.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
          'Orders',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.sp),
        child: Column(
          children: [
            TabBar(
              dividerHeight: 1.5.sp,
              controller: _tabController,
              labelColor: Color(0xffFF5E00),
              unselectedLabelColor: Color(0xff6D3805),
              indicatorColor: Color(0xffFF5E00),
              indicatorWeight: 2.5.sp,
              tabs: [
                Tab(
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tabbar(),
                  Tab2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
