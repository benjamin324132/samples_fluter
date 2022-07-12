import 'dart:async';
import 'package:flutter/material.dart';
import 'button.dart';
import 'grid.dart';
import 'package:flutter/services.dart';

class MyGame extends StatefulWidget {
  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  static List<List<int>> pieces = [
    [4, 5, 14, 15],
    [4, 14, 24, 25],
    [5, 15, 24, 25],
    [4, 14, 24, 34],
    [4, 14, 15, 25],
    [5, 15, 14, 24],
    [4, 5, 6, 15]
  ];

  List<Color> pieceColor = [
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.pink
  ];

  List<int> chosenPiece = [];
  List<int> landed = [];
  List<List<int>> landedPosColor = [
    [], // red
    [], // yellow
    [], // purple
    [], // green
    [], // blue
    [], // brown
    [], // pink
  ];

  static int numberOfSquares = 150;
  static int number = 0;
  double count = 0;

  void countLanded() {
    count = landed.length / 4;
    print(count);
  }

  void startGame() {
    resetPieces();
    choosePiece();
    const duration = const Duration(milliseconds: 300);
    Timer.periodic(
      duration,
      (Timer timer) {
        clearRow();
        print(landedPosColor);

        if (hitFloor()) {
          for (int i = 0; i < chosenPiece.length; i++) {
            landed.add(chosenPiece[i]);
            landedPosColor[number % pieces.length].add(chosenPiece[i]);
          }
          number++;
          startGame();
          timer.cancel();
        } else {
          moveDown();
        }
      },
    );
  }

  void resetPieces() {
    setState(() {
      pieces = [
        [4, 5, 14, 15],
        [4, 14, 24, 25],
        [5, 15, 24, 25],
        [4, 14, 24, 34],
        [4, 14, 15, 25],
        [5, 15, 14, 24],
        [4, 5, 6, 15]
      ];
    });
  }

  void clearRow() {
    int count;
    List<int> removeRow = [];

    for (int i = 0; i < 18; i++) {
      // 18 is the number of rows
      removeRow.clear();
      count = 0;
      for (int j = 0; j < 10; j++) {
        if (landed.contains(numberOfSquares - 1 - i * 10 - j)) {
          removeRow.add(179 - i * 10 - j);
          count++;
        }

        if (count == 10) {
          setState(() {
            removeRow.forEach((element) => landed.remove(element));
            for (int q = 0; q < pieces.length; q++) {
              removeRow.forEach((element) => landedPosColor[q].remove(element));
            }

            for (int i = 0; i < landed.length; i++) {
              if (landed[i] < removeRow.first) {
                landed[i] += 10;
              }
            }

            for (int q = 0; q < landedPosColor.length; q++) {
              for (int r = 0; r < landedPosColor[q].length; r++) {
                if (landedPosColor[q][r] < removeRow.first) {
                  landedPosColor[q][r] += 10;
                }
              }
            }
          });
        }
      }
    }
  }

  void choosePiece() {
    setState(() {
      chosenPiece = pieces[number % pieces.length];
    });
  }

  void moveDown() {
    setState(() {
      for (int i = 0; i < chosenPiece.length; i++) {
        chosenPiece[i] += 10;
      }
    });
  }

  void moveLeft() {
    HapticFeedback.vibrate();
    if (chosenPiece.any((element) => (element) % 10 == 0 || landed.contains(element - 1))) {
    } else {
      setState(() {
        for (int i = 0; i < chosenPiece.length; i++) {
          chosenPiece[i] -= 1;
        }
      });
    }
    for (int i = 0; i < chosenPiece.length; i++) {
      if (landed.contains(chosenPiece[i] - 1) || (chosenPiece[i] - 1) % 10 == 0) {}
    }
  }

  void moveRight() {
    HapticFeedback.lightImpact();
    if (chosenPiece.any((element) => (element + 1) % 10 == 0 || landed.contains(element + 1))) {
    } else {
      setState(() {
        for (int i = 0; i < chosenPiece.length; i++) {
          chosenPiece[i] += 1;
        }
      });
    }
    for (int i = 0; i < chosenPiece.length; i++) {
      if (landed.contains(chosenPiece[i] + 1) || (chosenPiece[i] - 1) % 10 == 0) {}
    }
  }

  bool hitFloor() {
    bool hitFloor = false;
    chosenPiece.sort();
    if (chosenPiece.last + 10 >= numberOfSquares) {
      hitFloor = true;
      countLanded();
    }
    for (int i = 0; i < chosenPiece.length; i++) {
      if (landed.contains(chosenPiece[i] + 10)) {
        hitFloor = true;
        countLanded();
      }
    }

    return hitFloor;
  }

  void rotatePiece() {
    chosenPiece.sort();

    if (identifyPiece() == 0) {
      rotate0to1();
    } else if (identifyPiece() == 1) {
      rotate1to0();
    } else if (identifyPiece() == 2) {
      rotate2to3();
    } else if (identifyPiece() == 3) {
      rotate3to2();
    } else if (identifyPiece() == 4) {
      rotate4to5();
    } else if (identifyPiece() == 5) {
      rotate5to6();
    } else if (identifyPiece() == 6) {
      rotate6to7();
    } else if (identifyPiece() == 7) {
      rotate7to4();
    } else if (identifyPiece() == 8) {
      rotate8to9();
    } else if (identifyPiece() == 9) {
      rotate9to10();
    } else if (identifyPiece() == 10) {
      rotate10to11();
    } else if (identifyPiece() == 11) {
      rotate11to8();
    } else if (identifyPiece() == 12) {
      rotate12to13();
    } else if (identifyPiece() == 13) {
      rotate13to14();
    } else if (identifyPiece() == 14) {
      rotate14to15();
    } else if (identifyPiece() == 15) {
      rotate15to12();
    } else if (identifyPiece() == 16) {
      rotate16to17();
    } else if (identifyPiece() == 17) {
      rotate17to16();
    }
  }

  void rotate0to1() {
    if (chosenPiece.first % 10 == 9) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 - 2;
        chosenPiece[1] = chosenPiece[1] - 2;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 - 2;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 - 2;
      });
    } else if (chosenPiece.first % 10 == 8) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 - 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 - 1;
      });
    } else if (chosenPiece.first % 10 == 0) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 - 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 + 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 - 2;
        chosenPiece[1] = chosenPiece[1] - 2;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 - 2;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 - 2;
      });
    } else if (landed.contains(chosenPiece.first + 10 + 2)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 10 + 1 - 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 2 - 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2] - 10 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 2;
      });
    }
  }

  void rotate1to0() {
    if (chosenPiece.first + 10 > 179) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 10 + 1 - 20;
        chosenPiece[1] = chosenPiece[1] - 20;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 - 20;
        chosenPiece[3] = chosenPiece[3] + 20 - 2 - 20;
      });
    } else if (chosenPiece.first + 20 > 179) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 10 + 1 - 10;
        chosenPiece[1] = chosenPiece[1] - 10;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 - 10;
        chosenPiece[3] = chosenPiece[3] + 20 - 2 - 10;
      });
    } else if (landed.contains(chosenPiece.first + 10 + 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 10 + 1 - 20;
        chosenPiece[1] = chosenPiece[1] - 20;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 - 20;
        chosenPiece[3] = chosenPiece[3] + 20 - 2 - 20;
      });
    } else if (landed.contains(chosenPiece.first + 20 + 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 10 + 1 - 10;
        chosenPiece[1] = chosenPiece[1] - 10;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 - 10;
        chosenPiece[3] = chosenPiece[3] + 20 - 2 - 10;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 10 + 1;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2] + 10 - 1;
        chosenPiece[3] = chosenPiece[3] + 20 - 2;
      });
    }
  }

  void rotate2to3() {
    if (chosenPiece.first % 10 == 0) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] - 10 - 1 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 - 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] - 10 - 1 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2] - 10 - 1;
        chosenPiece[3] = chosenPiece[3] - 20;
      });
    }
  }

  void rotate3to2() {
    setState(() {
      chosenPiece[0] = chosenPiece[0];
      chosenPiece[1] = chosenPiece[1] + 20;
      chosenPiece[2] = chosenPiece[2] + 2;
      chosenPiece[3] = chosenPiece[3];
    });
  }

  void rotate4to5() {
    setState(() {
      chosenPiece[0] = chosenPiece[0];
      chosenPiece[1] = chosenPiece[1] + 10 + 1;
      chosenPiece[2] = chosenPiece[2];
      chosenPiece[3] = chosenPiece[3];
    });
  }

  void rotate5to6() {
    if (chosenPiece.first % 10 == 0) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] + 1;
        chosenPiece[3] = chosenPiece[3] + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 - 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] + 1;
        chosenPiece[3] = chosenPiece[3] + 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2];
        chosenPiece[3] = chosenPiece[3];
      });
    }
  }

  void rotate6to7() {
    setState(() {
      chosenPiece[0] = chosenPiece[0];
      chosenPiece[1] = chosenPiece[1];
      chosenPiece[2] = chosenPiece[2] - 10 - 1;
      chosenPiece[3] = chosenPiece[3];
    });
  }

  void rotate7to4() {
    if (chosenPiece.first % 10 == 9) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 1;
        chosenPiece[3] = chosenPiece[3] - 10 + 1 - 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 + 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 1;
        chosenPiece[3] = chosenPiece[3] - 10 + 1 - 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0];
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2];
        chosenPiece[3] = chosenPiece[3] - 10 + 1;
      });
    }
  }

  void rotate8to9() {
    setState(() {
      chosenPiece[0] = chosenPiece[0] + 2;
      chosenPiece[1] = chosenPiece[1] + 10 + 1;
      chosenPiece[2] = chosenPiece[2];
      chosenPiece[3] = chosenPiece[3] - 10 - 1;
    });
  }

  void rotate9to10() {
    setState(() {
      chosenPiece[0] = chosenPiece[0] - 10 - 1 - 1;
      chosenPiece[1] = chosenPiece[1] - 10 + 1 - 1;
      chosenPiece[2] = chosenPiece[2] - 1;
      chosenPiece[3] = chosenPiece[3] - 1;
    });
  }

  void rotate10to11() {
    if (chosenPiece.last % 10 == 9) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 + 2 - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 1;
        chosenPiece[3] = chosenPiece[3] - 10 - 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 + 2)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 + 2 - 1;
        chosenPiece[1] = chosenPiece[1] - 1;
        chosenPiece[2] = chosenPiece[2] - 1;
        chosenPiece[3] = chosenPiece[3] - 10 - 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 + 2;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2];
        chosenPiece[3] = chosenPiece[3] - 10;
      });
    }
  }

  void rotate11to8() {
    setState(() {
      chosenPiece[0] = chosenPiece[0] - 10;
      chosenPiece[1] = chosenPiece[1];
      chosenPiece[2] = chosenPiece[2] - 10 - 1;
      chosenPiece[3] = chosenPiece[3] + 1;
    });
  }

  void rotate12to13() {
    setState(() {
      chosenPiece[0] = chosenPiece[0];
      chosenPiece[1] = chosenPiece[1];
      chosenPiece[2] = chosenPiece[2] - 10 - 1;
      chosenPiece[3] = chosenPiece[3] - 10 + 1;
    });
  }

  void rotate13to14() {
    setState(() {
      chosenPiece[0] = chosenPiece[0] - 10 + 2;
      chosenPiece[1] = chosenPiece[1] + 10;
      chosenPiece[2] = chosenPiece[2];
      chosenPiece[3] = chosenPiece[3];
    });
  }

  void rotate14to15() {
    if (chosenPiece.last % 10 == 9) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 - 1;
        chosenPiece[1] = chosenPiece[1] + 10 + 1 - 1;
        chosenPiece[2] = chosenPiece[2] - 1;
        chosenPiece[3] = chosenPiece[3] - 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1;
        chosenPiece[1] = chosenPiece[1] + 10 + 1;
        chosenPiece[2] = chosenPiece[2];
        chosenPiece[3] = chosenPiece[3];
      });
    }
  }

  void rotate15to12() {
    setState(() {
      chosenPiece[0] = chosenPiece[0];
      chosenPiece[1] = chosenPiece[1];
      chosenPiece[2] = chosenPiece[2] - 20;
      chosenPiece[3] = chosenPiece[3] - 20 - 2;
    });
  }

  void rotate16to17() {
    if (chosenPiece.first % 10 == 1) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 2 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 + 1;
        chosenPiece[3] = chosenPiece[3] + 1 + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 - 1)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 1 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] - 10 - 1 + 1;
        chosenPiece[3] = chosenPiece[3] - 20 + 1;
      });
    } else if (landed.contains(chosenPiece.first + 10 - 2)) {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 2 + 1;
        chosenPiece[1] = chosenPiece[1] + 1;
        chosenPiece[2] = chosenPiece[2] + 10 - 1 + 1;
        chosenPiece[3] = chosenPiece[3] + 1 + 1;
      });
    } else {
      setState(() {
        chosenPiece[0] = chosenPiece[0] + 10 - 2;
        chosenPiece[1] = chosenPiece[1];
        chosenPiece[2] = chosenPiece[2] + 10 - 1;
        chosenPiece[3] = chosenPiece[3] + 1;
      });
    }
  }

  void rotate17to16() {
    setState(() {
      chosenPiece[0] = chosenPiece[0] + 1;
      chosenPiece[1] = chosenPiece[1] + 1;
      chosenPiece[2] = chosenPiece[2] - 1 + 1;
      chosenPiece[3] = chosenPiece[3] - 1 - 20 + 1;
    });
  }

  int identifyPiece() {
    int pieceNumber = 0;

    chosenPiece.sort();

    if (chosenPiece[0] + 30 == chosenPiece[3]) {
      pieceNumber = 0;
    } else if (chosenPiece[0] + 3 == chosenPiece[3]) {
      pieceNumber = 1;
    } else if (chosenPiece[0] + 10 == chosenPiece[1] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[2] &&
        chosenPiece[0] + 20 + 1 == chosenPiece[3]) {
      pieceNumber = 2;
    } else if (chosenPiece[0] + 10 - 1 == chosenPiece[2] &&
        chosenPiece[0] + 10 == chosenPiece[3] &&
        chosenPiece[0] + 1 == chosenPiece[1]) {
      pieceNumber = 3;
    } else if (chosenPiece[0] + 10 - 1 == chosenPiece[1] &&
        chosenPiece[0] + 10 == chosenPiece[2] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[3]) {
      pieceNumber = 4;
    } else if (chosenPiece[0] + 10 == chosenPiece[1] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[2] &&
        chosenPiece[0] + 20 == chosenPiece[3]) {
      pieceNumber = 5;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 2 == chosenPiece[2] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[3]) {
      pieceNumber = 6;
    } else if (chosenPiece[0] + 10 - 1 == chosenPiece[1] &&
        chosenPiece[0] + 10 == chosenPiece[2] &&
        chosenPiece[0] + 20 == chosenPiece[3]) {
      pieceNumber = 7;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[2] &&
        chosenPiece[0] + 20 + 1 == chosenPiece[3]) {
      pieceNumber = 8;
    } else if (chosenPiece[0] + 10 - 2 == chosenPiece[1] &&
        chosenPiece[0] + 10 - 1 == chosenPiece[2] &&
        chosenPiece[0] + 10 == chosenPiece[3]) {
      pieceNumber = 9;
    } else if (chosenPiece[0] + 10 == chosenPiece[1] &&
        chosenPiece[0] + 20 == chosenPiece[2] &&
        chosenPiece[0] + 20 + 1 == chosenPiece[3]) {
      pieceNumber = 10;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 2 == chosenPiece[2] &&
        chosenPiece[0] + 10 == chosenPiece[3]) {
      pieceNumber = 11;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 10 == chosenPiece[2] &&
        chosenPiece[0] + 20 == chosenPiece[3]) {
      pieceNumber = 12;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 2 == chosenPiece[2] &&
        chosenPiece[0] + 10 + 2 == chosenPiece[3]) {
      pieceNumber = 13;
    } else if (chosenPiece[0] + 10 == chosenPiece[1] &&
        chosenPiece[0] + 20 == chosenPiece[3] &&
        chosenPiece[0] + 20 - 1 == chosenPiece[2]) {
      pieceNumber = 14;
    } else if (chosenPiece[0] + 10 == chosenPiece[1] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[2] &&
        chosenPiece[0] + 10 + 2 == chosenPiece[3]) {
      pieceNumber = 15;
    } else if (chosenPiece[0] + 10 == chosenPiece[2] &&
        chosenPiece[0] + 10 - 1 == chosenPiece[1] &&
        chosenPiece[0] + 20 - 1 == chosenPiece[3]) {
      pieceNumber = 16;
    } else if (chosenPiece[0] + 1 == chosenPiece[1] &&
        chosenPiece[0] + 10 + 1 == chosenPiece[2] &&
        chosenPiece[0] + 10 + 2 == chosenPiece[3]) {
      pieceNumber = 17;
    }

    return pieceNumber;
  }

  /*
  0 ->  x
        x
        x
        x
  1 ->  x x x x
  2 ->  x
        x x
          x
  3 ->    x x
        x x
  4 ->    x
        x x x
  5 ->    x
          x x
          x
  
  6 ->  x x x
          x
  7 ->    x
        x x
          x
  8 ->  x x
          x
          x
  
  9 ->      x
        x x x
  10 ->  x
         x
         x x
  11 ->  x x x
         x
  12 ->  x x
         x
         x
  13 -> x x x
            x
  14 ->   x
          x
        x x
  15 -> x
        x x x
  16 ->     x
          x x
          x
  17 ->   
          x x
            x x
  */

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: Column(
          children: <Widget>[
            Expanded(
                child: MyGrid(
              numberOfSquares: numberOfSquares,
              landedPieces: landedPosColor,
              newPiece: chosenPiece,
              newColor: pieceColor[number % pieces.length],
            )),
            Container(
              height: 100,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: startGame,
                    child: MyButton(
                      child: Text(
                        "PLAY",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: moveLeft,
                    child: MyButton(
                      child: Icon(
                        Icons.arrow_left,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: moveRight,
                    child: MyButton(
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: rotatePiece,
                    child: MyButton(
                      child: Icon(
                        Icons.rotate_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
