import 'package:best_mentor/pages/hire_page.dart';
import 'package:best_mentor/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/' : (context) => HomePage(),
         '/hire' : (context) => HirePage(),
      },
    );
  }
}
