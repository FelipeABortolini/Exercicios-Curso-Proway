import 'package:flutter/material.dart';
import 'card_weather_home.dart';
import 'container_air_home.dart';
import 'container_fridge_home.dart';
import 'container_home_footer.dart';
import 'container_lamp_home.dart';
import 'container_router_home.dart';
import 'list_text_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CardWeatherHome(),
          const ListTextHorizontal(),
          Wrap(
            children: const [
              ContainerLampHome(),
              ContainerRouterHome(),
              ContainerAirHome(),
              ContainerFridgeHome(),
            ],
          ),
          const ContainerHomeFooter(),
        ],
      ),
    );
  }
}
