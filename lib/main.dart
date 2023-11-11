import 'package:flutter/material.dart';
import 'package:ui_login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Gayuh',
      theme: ThemeData(
       primarySwatch: Colors.amber
      ),
      home: LoginPage(),
    );
  }
}