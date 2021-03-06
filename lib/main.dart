import 'package:flutter/material.dart';
import 'package:signin_signup_ui/view/login_page.dart';
import 'package:signin_signup_ui/view/tabbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: TabbarPage(),
    );
  }
}
