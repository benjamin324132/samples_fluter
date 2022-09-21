import 'dart:math';

import 'package:flutter/material.dart';

class BoardingPassScree extends StatefulWidget {
  const BoardingPassScree({Key? key}) : super(key: key);

  @override
  _BoardingPassScreeState createState() => _BoardingPassScreeState();
}

class _BoardingPassScreeState extends State<BoardingPassScree> {

  double random(min, max) {
    return min + Random().nextInt(max - min).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Column(
        children: [
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            color: Colors.amberAccent,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "BOARDING PASS",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "LHR",
                          style: TextStyle(
                              fontSize: 90,
                              color: Colors.amberAccent,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              shadows: [
                                 Shadow(
                                    // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.black),
                                Shadow(
                                    // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.black),
                                Shadow(
                                    // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black),
                                 Shadow(
                                    // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.black),
                              ]),
                        ),
                        Row(
                          children:const [
                             Icon(Icons.arrow_forward),
                             SizedBox(
                              width: 12,
                            ),
                             Text(
                              "JFK",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children:const [
                         Icon(
                          Icons.airplane_ticket,
                        ),
                         SizedBox(
                          height: 16,
                        ),
                         Text(
                          "London",
                          style:  TextStyle(fontWeight: FontWeight.bold),
                        ),
                         SizedBox(
                          height: 16,
                        ),
                         Text("New York", style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: size.width * .75,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Flight", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text("AA996", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text("Gate", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text("B5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Board", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text("7:50 AM", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:const [
                           Text("Departs", style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                           SizedBox(
                            height: 12,
                          ),
                           Text("8:07 AM", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:const [
                           Text("Arrives", style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                           SizedBox(
                            height: 12,
                          ),
                           Text("3:45 AM", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                           Text("Passenger", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                           SizedBox(
                            height: 12,
                          ),
                           Text("Joseph Gilbert", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:const [
                           Text("Seat", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                           SizedBox(
                            height: 12,
                          ),
                           Text("2A", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 25; i++)
                        Container(
                          color: Colors.black,
                          width: random(2, 10),
                          height: 60,
                        )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
