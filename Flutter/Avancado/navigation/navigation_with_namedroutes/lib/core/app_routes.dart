import 'package:flutter/material.dart';

import '../main.dart';
import '../page_three.dart';
import '../page_two.dart';

var appRoutes = {
  MyHomePage.route: (context) => const MyHomePage(),
  PageTwo.route: (context) => PageTwo(),
  PageThree.route: (context) => PageThree(),
};

var onUnknownRoute = (context) {
  return MaterialPageRoute(
    builder: (context) {
      return const Text('Página não encontrada');
    },
  );
};
