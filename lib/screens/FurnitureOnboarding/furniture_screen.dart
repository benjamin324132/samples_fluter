import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFbbe3de),
      body: Column(
        children: [
          Image.asset(
            "assets/images/lamp_1.png",
            width: size.width,
            height: size.height / 1.8,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "02.",
                  style: GoogleFonts.poppins(
                      fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Roof Lamp Lighing",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Roof light and lamps, we have wide variety of lamps in alla colors and lamps also available",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 147, 157, 162),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 152, 187, 183)),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 82, 95, 93),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
