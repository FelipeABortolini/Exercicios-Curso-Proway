import 'package:flutter/material.dart';

class ContainerFridgeHome extends StatelessWidget {
  const ContainerFridgeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 30,
      ),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade50,
            blurRadius: 10,
            spreadRadius: 3,
            offset: const Offset(4, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.door_back_door,
                color: Colors.black,
                size: 40,
              ),
              Icon(
                Icons.toggle_on_rounded,
                color: Colors.red,
                size: 40,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: const [
                Text(
                  "Fridge",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "CLOSED",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

