import 'package:flutter/material.dart';
import 'package:grocery_app/src/presentation/order_/ui/ui.dart';
import 'package:grocery_app/src/presentation/order_/view/selected_fruits_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Feiut extends StatelessWidget {
  final int index;

  const Feiut({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              height: 90.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 25,
                ),
                itemCount: imagefruits.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedFruitsPage(
                            imagePath: imagefruits[index],
                            fruitName: fruisttext[index],
                            price: textprice[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      width: 20.w,
                      height: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffC4C4C4),
                            offset: Offset(2, 2),
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Color(0xffC4C4C4),
                            offset: Offset(-2, -2),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 2.h),
                            Image.asset(imagefruits[index]), // Meva rasmi
                            SizedBox(height: 0.3.h),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                fruisttext[index], // Meva nomi
                                style: TextStyle(
                                  color: Color(0xff6D3805),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "1kg, priceg", // Mahsulot haqida qo'shimcha ma'lumot
                                style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  textprice[index], // Narx
                                  style: TextStyle(
                                    color: Color(0xffFF5E00),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff3AA14C),
                                    size: 19.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
