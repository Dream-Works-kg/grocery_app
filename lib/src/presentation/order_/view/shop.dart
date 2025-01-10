import 'package:flutter/material.dart';
import 'package:grocery_app/src/presentation/order_/ui/ui.dart';
import 'package:grocery_app/src/presentation/order_/view/explore.dart';
import 'package:grocery_app/src/presentation/order_/view/tabbar_view.dart';
import 'package:grocery_app/src/presentation/order_/widget/fruist._list_view_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 21.sp,
                  color: Color(0xffFF7203),
                ),
                Text(
                  "Lungangen",
                  style: TextStyle(
                    color: Color(0xffFF5E00),
                    fontWeight: FontWeight.w700,
                    fontSize: 21.sp,
                  ),
                ),
              ],
            ),
            Container(
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
            ),
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.5.sp,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Explore(
                          imageList: imageodrer,
                          currentIndex: 0, // Barcha rasmlarni uzatish
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xffFF5E00),
                      fontWeight: FontWeight.w400,
                      fontSize: 17.5.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 24.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageodrer.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Explore(
                              imageList: imageodrer, // Barcha rasmlarni uzatish
                              currentIndex: index, // Hozirgi indeksni uzatish
                            ),
                          ),
                        );
                      },
                      child: Image.asset(
                        imageodrer[index],
                        width: 23.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  "Popular deals",
                  style: TextStyle(
                    color: Color(0xff6D3805),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.5.sp,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TabbarView(),
                      ),
                    );
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xffFF5E00),
                      fontWeight: FontWeight.w400,
                      fontSize: 17.5.sp,
                    ),
                  ),
                ),
              ],
            ),
            FruistListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
