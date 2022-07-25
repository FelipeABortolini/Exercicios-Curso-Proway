import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'App teste',
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find a barber',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrincipalPage(),
    );
  }
}

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Image(
          image: AssetImage("assets/images/img_warren.png"),
        ),
      )
    );
  }
}
