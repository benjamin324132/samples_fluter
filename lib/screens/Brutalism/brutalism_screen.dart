import 'package:flutter/material.dart';

class BrutalismScreen extends StatefulWidget {
  const BrutalismScreen({Key? key}) : super(key: key);

  @override
  State<BrutalismScreen> createState() => _BrutalismScreenState();
}

class _BrutalismScreenState extends State<BrutalismScreen> {
  bool isPressed = true;

  void pressed() {
    setState(() {
      isPressed = false;
    });
    Future.delayed(const Duration(milliseconds: 300), pressedBack);
  }

  void pressedBack() {
    setState(() {
      isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: pressed,
            child: Container(
              color: Colors.transparent,
              width: 154,
              height: 54,
              child: Stack(
                children: [
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black, width: 1.8)),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    top: isPressed ? 0 : 4,
                    left: isPressed ? 0 : 4,
                    child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 142, 115, 219),
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Colors.black, width: 1.8)),
                        child: const Center(
                            child: Text(
                          "GET STARTED",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
