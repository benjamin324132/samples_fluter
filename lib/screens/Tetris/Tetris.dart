import 'package:flutter/material.dart';

import 'components/game.dart';

class Tetris extends StatefulWidget {
  @override
  _TetrisState createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.grey[900],
      body: MyGame(),
    );
  }
}
