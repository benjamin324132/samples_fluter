import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'dart:math' as math;

class PodifyScreen extends StatelessWidget {
  const PodifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 225, 223, 223),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Iconsax.arrow_left,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade600,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Iconsax.share,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://images.unsplash.com/photo-1559523161-0fc0d8b38a7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Orange Dream",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "The Orange Dream",
                        style: TextStyle(color: Colors.white38, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Iconsax.heart,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 18),
            SliderTheme(
              data: const SliderThemeData(
                trackHeight: 6,
              ),
              child: Slider(
                label: "Text Opacity",
                activeColor: Colors.yellow.shade600,
                inactiveColor: const Color.fromARGB(31, 225, 223, 223),
                thumbColor: Colors.orange,
                min: 0.0,
                max: 100.0,
                value: 68.0,
                onChanged: (value) {},
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2:24",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
                Text(
                  "40:16",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Iconsax.previous,
                  color: Colors.white60,
                  size: 32,
                ),
                const Icon(
                  Iconsax.backward_10_seconds,
                  color: Colors.white60,
                  size: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade600, shape: BoxShape.circle),
                  child: const Icon(
                    Iconsax.play,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                const Icon(
                  Iconsax.forward_10_seconds,
                  color: Colors.white60,
                  size: 30,
                ),
                Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: const Icon(
                      Iconsax.previous,
                      color: Colors.white60,
                      size: 32,
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
