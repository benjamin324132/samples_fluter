import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SahmeMovie extends StatelessWidget {
  const SahmeMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Divider(thickness: 3, color: Colors.white),
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
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "BOOK NUMBER 032",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  "LOS ANGELES, CA",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const Divider(thickness: 3, color: Colors.white),
            Row(
              children: [
                const Spacer(),
                Text("SHAME",
                    style: GoogleFonts.firaSans(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10,
                        color: Colors.white)),
                const Spacer()
              ],
            ),
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/M/MV5BMjg4MzM2NzgwMF5BMl5BanBnXkFtZTcwMzIzOTAxNw@@._V1_FMjpg_UX1280_.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const Divider(
              thickness: 3,
              color: Colors.white,
            ),
            const Text(
              "WRITEN AND DIRECTED BY",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
             Text(
              "Steve McQueen".toUpperCase(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      )),
    );
  }
}
