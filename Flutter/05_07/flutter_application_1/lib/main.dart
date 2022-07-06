import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Aprendendo telas",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprendendo telas"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // INICIO DO BLOCO DO CLOUDY
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/cloud.jpg"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.shade50,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: const Offset(7, 7),
                  ),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 10),
                      child: Text(
                        "1 Feb 2019",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.wb_cloudy,
                          color: Colors.grey[400],
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Cloudy",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "26ºC",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Indoor Temp",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "48.2%",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Outdoor Humidity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "52.99%",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Indoor Humidity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
            ),
            // FIM DO BLOCO DO CLOUDY
            // INICIO DA LISTA DE ESCRITAS - LIVING ROOM
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 100),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Living Room",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Kitchen",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Dinning",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Bedroom",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // FIM DA LISTA DO LIVING ROOM
            // INICIO DOS BLOCOS ADICIONAIS
            Row(
              children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 30,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
                            Icons.light_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                          Icon(
                            Icons.toggle_off_rounded,
                            color: Colors.white,
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
                              "Lamp",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "OPENED",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // FIM DO PRIMEIRO CONTAINER DOS BLOCOS
                const SizedBox(width: 22),
                // INICIO DO SEGUNDO CONTAINER DA ROW
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 30,
                  ),
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
                            Icons.router_rounded,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Router",
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
                ),
                // FIM DO SEGUNDO CONTAINER DA ROW
              ],
            ),
            // FIM DA ROW DE CONTAINERS
            // INICIO DA SEGUNDA ROW DE CONTAINERS
            Row(
              children: [
                const SizedBox(height: 15),
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 30,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 5,
                  ),
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
                            Icons.air,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Air",
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
                ),
                // FIM DO 1 CONTAINER DA SEGUNDA ROW DE CONTAINERS
                const SizedBox(width: 22),
                // INICIO DO 2 CONTAINER DA ROW
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 30,
                  ),
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
                ),
                // FIM DO SEGUNDO CONTAINER DA SEGUNDA ROW
              ],
            ),
            // FIM DA SEGUNDA ROW DE CONTAINERS
            // INICIO DO CONTAINER FINAL
            Container(
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
                      const SizedBox(width: 150),
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
            ),
            //FIM DO CONTAINER FINAL
          ],
        ),
      ),
    );
  }
}