import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pointers',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onLongPress: () {
                print('Long press');
              },
              onDoubleTap: () {
                print('Double click');
              },
              onTap: () {
                print('Fui clicado');
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
