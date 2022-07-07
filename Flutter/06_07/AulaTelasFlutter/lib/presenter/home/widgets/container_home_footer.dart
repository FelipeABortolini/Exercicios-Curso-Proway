import 'package:flutter/material.dart';

class ContainerHomeFooter extends StatelessWidget {
  const ContainerHomeFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 30,
      ),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.lightBlue[100]!,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade50,
            blurRadius: 10,
            spreadRadius: 3,
            offset: const Offset(7, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              const Icon(
                Icons.disc_full,
                color: Colors.white,
                size: 50,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Everyday Life",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Coldplay",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 50),
              const Icon(
                Icons.skip_previous_rounded,
                color: Colors.white38,
                size: 20,
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.pause,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.skip_next,
                color: Colors.white38,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

