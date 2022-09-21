import 'package:flutter/material.dart';

class A24 extends StatelessWidget {
  const A24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "A24",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "NEW YORK, NY",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const Text(
                  "BOOK NUMBER 001",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Row(
              children: const [
                Text(
                  "EX",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Spacer()
              ],
            ),
            Row(
              children: const [
                Spacer(),
                Text(
                  "MACHINA",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/M/MV5BMTk4MTc1NDczNV5BMl5BanBnXkFtZTgwODAwNTAwNDE@._V1_.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const Divider(
              thickness: 3,
              color: Colors.black,
            ),
            const Text(
              "WRITEN AND DIRECTED BY",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "ALEX GARLAND",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )),
    );
  }
}
