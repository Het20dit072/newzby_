import 'package:flutter/material.dart';
import 'package:newzby/Screen/Add_Ads/main_jay.dart';
import 'package:newzby/Screen/Dashboard.dart';
import 'package:newzby/Screen/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
