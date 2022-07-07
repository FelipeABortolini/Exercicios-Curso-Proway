import 'package:flutter/material.dart';
import '../next_page/next_page.dart';
import 'widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprendendo telas"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NextPage();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_forward_rounded,
              size: 25,
            ),
          ),
        ],
      ),
      body: const BodyHome(),
    );
  }
}

