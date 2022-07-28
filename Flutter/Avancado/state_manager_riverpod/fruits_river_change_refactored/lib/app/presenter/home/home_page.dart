import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_controller.dart';
import 'widgets/fruit_button.dart';

final favoritesProvider = ChangeNotifierProvider(
  (ref) => FavoritesController(),
);

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorite = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha fruta favortia é ${favorite.fruit}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FruitButton('Maracujá'),
            FruitButton('Maçã'),
            FruitButton('Banana'),
            FruitButton('Abacaxi'),
            FruitButton('Melancia'),
          ],
        ),
      ),
    );
  }
}
