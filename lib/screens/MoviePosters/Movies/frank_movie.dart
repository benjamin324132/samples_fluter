import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrankMovie extends StatelessWidget {
  const FrankMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF87d6c4),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Divider(thickness: 3, color: Color(0xFFF9F6EE)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "A24",
                      style: TextStyle(fontSize: 18, color: Color(0xFFF9F6EE)),
                    ),
                    Text(
                      "LOS ANGELES, CA",
                      style: TextStyle(fontSize: 18, color: Color(0xFFF9F6EE)),
                    ),
                  ],
                ),
                const Text(
                  "BOOK NUMBER 001",
                  style: TextStyle(fontSize: 18, color: Color(0xFFF9F6EE)),
                ),
              ],
            ),
            const Divider(thickness: 3, color: Color(0xFFF9F6EE)),
            Row(
              children: [
                const Spacer(),
                Text("Frank",
                    style: GoogleFonts.shadowsIntoLight(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 10,
                        color: Color(0xFFF9F6EE))),
                const Spacer()
              ],
            ),
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/M/MV5BMTQxNTUxMTIzMV5BMl5BanBnXkFtZTgwNDAzMjExMTE@._V1_FMjpg_UX680_.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const Divider(
              thickness: 3,
              color: Color(0xFFF9F6EE),
            ),
            const Text(
              "WRITEN AND DIRECTED BY",
              style: TextStyle(fontSize: 18, color: Color(0xFFF9F6EE)),
            ),
            const Text(
              "LENNY ABRAHAMSON",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF9F6EE)),
            ),
          ],
        ),
      )),
    );
  }
}
