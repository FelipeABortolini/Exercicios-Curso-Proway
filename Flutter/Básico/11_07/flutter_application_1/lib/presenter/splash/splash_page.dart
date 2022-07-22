import 'package:flutter/material.dart';
import '../login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/img_warren.png",
          fit: BoxFit.cover,
        ),
        const CircularProgressIndicator(),
      ],
    );
  }
}
