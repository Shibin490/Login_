import 'package:fltterfly/views/home.dart';
import 'package:fltterfly/views/loginpage.dart';
import 'package:fltterfly/views/siginup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: login(),
      home: Siginup(),
    );
  }
}
