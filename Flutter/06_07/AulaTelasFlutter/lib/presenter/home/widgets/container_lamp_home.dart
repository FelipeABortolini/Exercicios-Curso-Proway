import 'package:flutter/material.dart';

class ContainerLampHome extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isOpened;
  final Color colorBackGround;

  const ContainerLampHome({
    Key? key,
    required this.icon,
    required this.title,
    required this.isOpened,
    required this.colorBackGround,
  }) : super(key: key);

  // State<ContainerLampHome> createState() => 

  // void _changeState(){
  //   setState(() {
  //     isOpened = !isOpened;
  //   });
  // }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }

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
        color: colorBackGround,
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
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              // IconButton(
                // onPressed: _changeState, 
                // icon: 
              Icon(
                isOpened?Icons.toggle_on_rounded:Icons.toggle_off_rounded,
                color: Colors.white,
                size: 40,
              ),
              // ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  isOpened?"OPENED":"CLOSED",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
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