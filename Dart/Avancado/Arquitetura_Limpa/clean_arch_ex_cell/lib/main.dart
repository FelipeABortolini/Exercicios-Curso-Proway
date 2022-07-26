import 'package:clean_arch_ex_cell/core/get_it.dart';
import 'package:flutter/material.dart';

import 'app/presenter/ui/cellphones_page.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cellphones Clear Arch',
      debugShowCheckedModeBanner: false,
      home: CellphonesPage(),
    );
  }
}