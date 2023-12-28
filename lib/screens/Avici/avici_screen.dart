// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

final List<dynamic> list = [
  {
    "text": "Corporate",
    "text2": "Solimo VI",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-kjEVGWUE.jpg&w=640&q=75"
  },
  {
    "text": "Corporate",
    "text2": "Metro 2",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-rvkCVS9K.jpeg&w=640&q=75"
  },
  {
    "text": "Corporate",
    "text2": "Phoenix",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-fd030c02-2134-43d8-9058-cc7346c735bc.JPG&w=640&q=75"
  },
  {
    "text": "Corporate",
    "text2": "Trumen",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-qrZOtBjVrKasIHPQsbfruaP8QwT056.JPG&w=640&q=75"
  },
  {
    "text": "Corporate",
    "text2": "Trumen",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-WXxjEQTK.jpg&w=640&q=75"
  },
  {
    "text": "Corporate",
    "text2": "Trumen",
    "src":
        "https://photos.sambecker.com/_next/image?url=https%3A%2F%2Fwpz47wrhgzc7qaub.public.blob.vercel-storage.com%2Fphoto-g6A3jpkfuMgouTgQnanYRwofGICN2j.jpeg&w=640&q=75"
  },
];

class AviciScreen extends StatelessWidget {
  const AviciScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81a39f),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Iconsax.textalign_right),
                Text(
                  "Avici",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Icon(Iconsax.search_normal)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium Project",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Deliver Great to Clients",
                    style: GoogleFonts.libreBaskerville(fontSize: 45)),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      list.length,
                      (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            height: 350,
                            width: 210,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Stack(children: [
                                    Positioned.fill(
                                      child: Image.network(
                                        list[index]['src'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ))),
                                  ]),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(list[index]['text']),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(list[index]['text2'],
                                    style: GoogleFonts.libreBaskerville(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )),
                )),
          )
        ],
      )),
    );
  }
}
