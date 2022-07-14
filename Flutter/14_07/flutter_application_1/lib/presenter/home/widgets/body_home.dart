import 'package:flutter/material.dart';

import 'column_text_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://static.mundoeducacao.uol.com.br/mundoeducacao/2021/02/pinguim.jpg',
              ),
              const SizedBox(),
              const Text(
                'Seja muito bem vindo',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 10,
                  blurRadius: 5,
                  color: Colors.blue.shade100,
                )
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Wrap(
            spacing: 10,
            children: const [
              ColumnTextHome(),
              ColumnTextHome(),
              ColumnTextHome(),
              ColumnTextHome(),
              ColumnTextHome(),
              ColumnTextHome(),
            ],
          ),
        ],
      ),
    );
  }
}
