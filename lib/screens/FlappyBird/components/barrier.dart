import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final barrierWidth; // out of 2, where 2 is the width of the screen
  final barrierHeight; // proportion of the screenheight
  final barrierX;
  final bool isThisBottomBarrier;

  MyBarrier({this.barrierHeight, this.barrierWidth, required this.isThisBottomBarrier, this.barrierX});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment((2 * barrierX + barrierWidth) / (2 - barrierWidth), isThisBottomBarrier ? 1 : -1),
      child: Container(
        color: Colors.green,
        width: size.width * barrierWidth / 2,
        height: size.height * 3 / 4 * barrierHeight / 2,
      ),
    );
  }
}
