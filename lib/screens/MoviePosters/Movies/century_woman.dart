import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenturyWoman extends StatelessWidget {
  const CenturyWoman({Key? key}) : super(key: key);

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
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      "BOOK NUMBER 009",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                const Text(
                  "SANTA BARBARA, CA",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            const Divider(thickness: 3, color: Colors.black),
            Row(
              children: [
                const Spacer(),
                GradientText(
                  "20TH",
                  style: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      color: Colors.pinkAccent),
                  gradient: const LinearGradient(colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.teal,
                  ]),
                ),
                const Spacer()
              ],
            ),
            Row(
              children: [
                const Spacer(),
                GradientText(
                  "CENTURY",
                  style: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      color: Colors.pinkAccent),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.teal,
                    Colors.black38,
                    Colors.white,
                    Colors.blueAccent,
                    Colors.cyan,
                    Colors.red,
                    Colors.purpleAccent
                  ]),
                ),
                const Spacer(),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                GradientText(
                  "WOMEN",
                  style: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      color: Colors.pinkAccent),
                  gradient: const LinearGradient(colors: [
                    Colors.teal,
                    Colors.greenAccent,
                    Colors.pinkAccent,
                    Colors.blue,
                    Colors.grey,
                    Colors.red,
                  ]),
                ),
                const Spacer(),
              ],
            ),
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/M/MV5BMTUyMDIwMTkwOF5BMl5BanBnXkFtZTgwNTcyNDA1MDI@._V1_FMjpg_UX1280_.jpg",
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
              "Mike Mills".toUpperCase(),
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

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
