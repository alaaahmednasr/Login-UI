import 'package:flutter/material.dart';
import 'package:login_application/modules/login1/login_screen1.dart';
import 'package:login_application/modules/login2/login_screen2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen2(),
    );
  }
}
