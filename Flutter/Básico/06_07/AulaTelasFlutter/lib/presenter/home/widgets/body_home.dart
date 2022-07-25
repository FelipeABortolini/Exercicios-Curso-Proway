import 'package:flutter/material.dart';
import 'card_weather_home.dart';
import 'container_home_footer.dart';
import 'list_text_horizontal.dart';
import 'wrap_containers_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CardWeatherHome(),
          ListTextHorizontal(),
          WrapContainerHome(),
          ContainerHomeFooter(),
        ],
      ),
    );
  }
}