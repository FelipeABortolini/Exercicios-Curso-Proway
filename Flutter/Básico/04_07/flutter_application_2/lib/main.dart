import 'package:flutter/material.dart';
const Color darkBlue = const Color(0xFF00008B);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}