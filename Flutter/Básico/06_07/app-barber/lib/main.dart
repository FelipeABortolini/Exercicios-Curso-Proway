import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PrincipalPage(),
    );
  }
}

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 7, 7, 7),
                  Color.fromARGB(255, 0, 0, 0),
                ]
                // colors: [Colors.blueAccent, Colors.purple],
                ),
            // color: Colors.blue,
            // borderRadius: BorderRadius.circular(30),
            boxShadow: [
              //efeito de profundidade
              BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 10,
                  color: Colors.blueGrey.shade50,
                  offset: Offset(2, 8))
            ]),
        child: Column(
          children: [
            Container(
              // height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              // margin: EdgeInsets.all(16),
              // decoration: BoxDecoration(color: Colors.amberAccent),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundImage: Image.asset('assets/icon/barba.png').image,
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // Icon(Icons.cut, size: 50, color: Colors.white),
                  Text('AppBarber',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  // Text('data', style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            Container(
              // width: 200,
              // height: 200,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              // margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Seja bem vindo ',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Row(
                    children: [
                      Text('João Paulo',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255))),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.people_alt,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  )
                ],
              ),
              // decoration: const BoxDecoration(
              //   gradient: LinearGradient(
              //       begin: Alignment.bottomRight,
              //       end: Alignment.topRight,
              //       colors: [
              //         Color.fromARGB(255, 3, 4, 4),
              //         Color.fromARGB(255, 90, 88, 88),
              //       ]
              //       // colors: [Colors.blueAccent, Colors.purple],
              //       ),
              //   // borderRadius: BorderRadius.circular(30),
              // ),
              // gradient: const LinearGradient(
              //     begin: Alignment.bottomRight,
              //     end: Alignment.topRight,
              //     colors: [
              //       Color.fromARGB(255, 9, 242, 250),
              //       Color.fromARGB(255, 255, 208, 208),
              //     ]
              //     // colors: [Colors.blueAccent, Colors.purple],
              //     ),
            ),
            Center(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Blumenau - SC',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                //CONTAINER DO MEIO
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agendar horário',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                          offset: Offset(0, 2),
                                          blurRadius: 3,
                                          color: Colors.black)
                                    ],
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Escolha o  barbeiro e agende o seu horário',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 0),
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Color.fromARGB(255, 101, 183, 104),
                          // offset: Offset(2, 8))
                        )
                      ]),
                  // color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Serviços',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Escolha o serviço de barbearia',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 92, 179),
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 78, 92, 179),
                          // offset: Offset(2, 8))
                        )
                      ]),
                  // color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Contato',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19)),
                            SizedBox(height: 10),
                            Text(
                              'Entre em contato com o barbeiro',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 131, 8),
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 239, 131, 8),
                          // offset: Offset(2, 8))
                        )
                      ]),
                  // color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
    ));
  }
}
