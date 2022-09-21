import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({Key? key}) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  Random random = Random();
  double start = 0;
  double start2 = 55;
  double start3 = 150;
  var position1 = [0.0, 50.0];

  double positionTop1 = 0;
  double positionLeft1 = 50;

  double positionTop2 = 55;
  double positionLeft2 = 230;

  double positionTop3 = 150;
  double positionLeft3 = 100;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 12000),
            left: positionLeft1,
            top: positionTop1,
            child: Container(
                height: 80.0,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      blurRadius: 75.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: const Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 12000),
            left: positionLeft2,
            top: positionTop2,
            child: Container(
                height: 80.0,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 75.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: const Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 12000),
            left: positionLeft3,
            top: positionTop3,
            child: Container(
                height: 80.0,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellowAccent.withOpacity(0.45),
                      blurRadius: 56.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: const Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
              bottom: 0,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      positionTop1 = random.nextInt(size.height.toInt()).toDouble();
                      positionLeft1 = random.nextInt(size.width.toInt()).toDouble();
                      positionTop2 = random.nextInt(size.height.toInt()).toDouble();
                      positionLeft2 = random.nextInt(size.width.toInt()).toDouble();
                      positionTop3 = random.nextInt(size.height.toInt()).toDouble();
                      positionLeft3 = random.nextInt(size.width.toInt()).toDouble();
                    });
                  },
                  child: const Text("Move"))),
        ],
      ),
    );
  }
}
