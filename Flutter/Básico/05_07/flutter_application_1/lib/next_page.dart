import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Oi, sou a outra tela.",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
