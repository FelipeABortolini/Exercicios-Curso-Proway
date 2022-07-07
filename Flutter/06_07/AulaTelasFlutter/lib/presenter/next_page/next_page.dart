import 'package:aula_telas_flutter/core/app_assets.dart';
import "package:flutter/material.dart";

// STL CRIA UMA ESTRUTURA INICIAL DE UM WIDGET STATELESS
class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 20,
        title: const Text("Aprendendo Segunda Tela"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              "Faço Programas!",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Schuyler",
                color: Colors.amber[800],
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(imgInta),
          ],
        ),
      ),
    );
  }
}
