import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../presentation/account/account.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Account(),
      ),
    );
  }
}
