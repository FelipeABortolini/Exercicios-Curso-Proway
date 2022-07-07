import 'package:flutter/material.dart';
import 'presenter/home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Aprendendo telas",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}