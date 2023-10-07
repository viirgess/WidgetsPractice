import 'package:flutter/material.dart';
import 'package:widgets_practice/component/screen/main_screen.dart';

enum LogoAspect { backgroundColor, large }

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ),
  );
}
