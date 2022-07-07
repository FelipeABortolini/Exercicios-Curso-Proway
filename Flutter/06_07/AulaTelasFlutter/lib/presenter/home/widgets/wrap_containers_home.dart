import 'package:flutter/material.dart';
import 'container_air_home.dart';
import 'container_fridge_home.dart';
import 'container_lamp_home.dart';
import 'container_router_home.dart';

class WrapContainerHome extends StatelessWidget {
  const WrapContainerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        ContainerLampHome(
          icon: Icons.light_outlined,
          title: 'Lamp',
          colorBackGround: Colors.red,
          isOpened: true,
        ),
        ContainerLampHome(
          icon: Icons.router_rounded,
          title: 'Router',
          colorBackGround: Colors.blue,
          isOpened: false,
        ),
        ContainerLampHome(
          icon: Icons.air,
          title: 'Air',
          colorBackGround: Colors.green,
          isOpened: true,
        ),
        ContainerLampHome(
          icon: Icons.door_back_door,
          title: 'Fridge',
          colorBackGround: Colors.yellow,
          isOpened: true,
        ),
        // ContainerRouterHome(),
        // ContainerAirHome(),
        // ContainerFridgeHome(),
      ],
    );
  }
}