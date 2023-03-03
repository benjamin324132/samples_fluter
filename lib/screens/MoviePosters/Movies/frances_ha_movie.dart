import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrancesHaMovie extends StatelessWidget {
  const FrancesHaMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Divider(thickness: 3, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "A24",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      "NEW YORK, NY",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                const Text(
                  "BOOK NUMBER 063",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            const Divider(thickness: 3, color: Colors.black),
             Row(
              children:  [
                Text(
                  "Frances",
                  style: GoogleFonts.lora(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10,
                        color: Colors.pinkAccent),
                ),
               const Spacer()
              ],
            ),
            Row(
              children:  [
                const Spacer(),
                Text(
                  "Ha",
                  style: GoogleFonts.lora(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10,
                        color: Colors.pinkAccent),
                ),
              ],
            ),
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/M/MV5BMTQwMzU2NDQ1MF5BMl5BanBnXkFtZTcwODY0ODYxOA@@._V1_FMjpg_UX1280_.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const Divider(
              thickness: 3,
              color: Colors.black,
            ),
            const Text(
              "WRITEN AND DIRECTED BY",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
             Text(
              "Noah Baumbach".toUpperCase(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      )),
    );
  }
}