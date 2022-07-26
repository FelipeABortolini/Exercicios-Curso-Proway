import 'package:flutter/material.dart';

// import 'app/presenter/ui/products_by_id_page.dart';
import 'app/presenter/ui/products_page.dart';

void main() {
  // setupDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Arch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductsPage(),
    );
  }
}