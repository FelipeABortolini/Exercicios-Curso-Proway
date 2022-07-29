import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  static const route = '/page-three';

  @override
  Widget build(BuildContext context) {
    final dataPageInitial = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page 3 ${dataPageInitial['name'].toString()}',
        ),
      ),
      body: Container(),
    );
  }
}
