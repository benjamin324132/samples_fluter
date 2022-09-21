import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Add new task",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Boxicons.bx_chevron_left),
                        Text(
                          "September, 2022",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Boxicons.bx_chevron_right),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text("S"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("M"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("T"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 246, 190, 77),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "13",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("W"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "14",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("T"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "15",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("F"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "16",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("S"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "17",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "write your task here...",
                  filled: true,
                  fillColor: Color(0xFFF8F8F9),
                  hintStyle: TextStyle(
                    color: Color(0xFFB8B5C3),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Boxicons.bx_timer),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Task time"),
                    Spacer(),
                    Text(
                      "4:00 PM",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Boxicons.bx_chevron_right),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Boxicons.bx_bell),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Notification"),
                    Spacer(),
                    Text(
                      "In 5 min",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Boxicons.bx_chevron_right),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Boxicons.bx_repeat),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Repeat"),
                    Spacer(),
                    Text(
                      "No",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Boxicons.bx_chevron_right),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
