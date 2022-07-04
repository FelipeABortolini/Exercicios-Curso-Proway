import 'package:flutter/material.dart';
import 'Dart:math';

void main() {
  runApp(
    // método que vai inflar nosso app (executar)
    MaterialApp(
      // um Widget que já vem co bastante coisas de configurações prontas.
      home:
          MyHomePage(), // Setando que a minha home (tela inicial) será a HomePage
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _random = new Random();

  String _url = 'https://play-lh.googleusercontent.com/BseH327xzCKV_xFkzsCAEJcxfrFOgHMk0VKniVSMzgcx0NC51quQ2RjEWniHPoBDDmo';

  List<String> list = [
    'https://play-lh.googleusercontent.com/BseH327xzCKV_xFkzsCAEJcxfrFOgHMk0VKniVSMzgcx0NC51quQ2RjEWniHPoBDDmo', 
    'https://cdn.spacemoney.com.br/upload/dn_arquivo/2020/11/logo-warren.jpeg'
  ];

  void _changeImg() {
    setState(() {
      _url = list[_random.nextInt(2)];
    });
  }

  // Classe StatelessWidget (Sem estado)
  @override
  Widget build(BuildContext context) {
    // Método que irá "buildar" toda nossa view passando o context (ajuda a identificar nossa árvore) e retornando um Widget.
    return Scaffold(
      // Esqueleto do app, sempre interessante ter 1 em cada Page.
      appBar: AppBar(), // Widget do próprio Flutter para AppBar
      body: Center(
        // Widget para centralizar dentro do espaço disponível
        child: Column(
          children: [
            const Text(
                'Olá como você esta?'), // Widget para mostrar um texto na tela
            const Text(
                'Estou bem, e você?'), // Widget para mostrar um texto na tela
            Image.network(
              '$_url',
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeImg,
              child: const Text('Enabled'),
            )
          ],
        ),
      ),
    );
  }
}
