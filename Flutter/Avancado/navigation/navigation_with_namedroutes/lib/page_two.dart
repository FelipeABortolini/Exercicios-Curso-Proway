import 'package:flutter/material.dart';

import 'page_three.dart';

class PageTwo extends StatelessWidget {
  static const route = '/page-two';

  @override
  Widget build(BuildContext context) {
    final dataPageInitial = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page 2 ${dataPageInitial['idade'].toString()}',
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                PageThree.route,
                arguments: {
                  'name': 'Felipe',
                  'idade': 20,
                },
              );
            },
            child: const Text('Página 3'),
          ),
        ),
      ),
    );
  }
}
