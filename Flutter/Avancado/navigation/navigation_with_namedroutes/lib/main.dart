import 'package:flutter/material.dart';
import 'core/app_routes.dart';

import 'page_two.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      // home: const MyHomePage(),
      initialRoute: MyHomePage.route,
      routes: appRoutes,
      onUnknownRoute: onUnknownRoute,
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                'PageTwo.route',
                arguments: {
                  'name': 'Felipe',
                  'idade': 20,
                },
              );
            },
            child: const Text('Página 2'),
          ),
        ),
      ),
    );
  }
}
