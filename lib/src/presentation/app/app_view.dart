import 'package:flutter/material.dart';
import 'package:grocery_app/src/presentation/registration/view/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
    );
  }
}
