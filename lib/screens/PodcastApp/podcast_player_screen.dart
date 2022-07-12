// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class PodcastPlayerScreen extends StatefulWidget {
  const PodcastPlayerScreen({Key? key}) : super(key: key);

  @override
  State<PodcastPlayerScreen> createState() => _PodcastPlayerScreenState();
}

class _PodcastPlayerScreenState extends State<PodcastPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.90),
                    Colors.white.withOpacity(0.80),
                    Colors.white.withOpacity(0.70),
                    Colors.white.withOpacity(0.50),
                    Colors.white.withOpacity(0.20),
                    Colors.transparent,
                    Colors.transparent,
                  ],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.network(
                'https://i.scdn.co/image/a5c557447a5da27e2e98910cec6320ed841b770e',
                //height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: size.height * 0.70,
              width: size.width,
              //color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        'https://i.scdn.co/image/a5c557447a5da27e2e98910cec6320ed841b770e',
                        fit: BoxFit.cover,
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Foster the People",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Coming of Age",
                      style: TextStyle(fontSize: 16, color: Colors.black38, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            // Use Boxicons class
                            icon: Icon(
                              Boxicons.bx_cast,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                        IconButton(
                            // Use Boxicons class
                            icon: Icon(
                              Boxicons.bx_heart,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                        IconButton(
                            // Use Boxicons class
                            icon: Icon(
                              Boxicons.bx_download,
                              color: Colors.grey,
                            ),
                            onPressed: () {})
                      ],
                    ),
                    SizedBox(height: 18),
                    Slider(
                      label: "Text Opacity",
                      activeColor: Color(0xff6b70BD),
                      inactiveColor: Colors.grey,
                      min: 0.0,
                      max: 100.0,
                      value: 68.0,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "05:02",
                          style: TextStyle(fontSize: 13, color: Color(0xff6b70BD), fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "-15:02",
                          style: TextStyle(fontSize: 13, color: Colors.black38, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              // Use Boxicons class
                              icon: Icon(
                                Boxicons.bx_command,
                                color: Colors.grey,
                                size: 26,
                              ),
                              onPressed: () {}),
                          IconButton(
                              // Use Boxicons class
                              icon: Icon(
                                Boxicons.bx_first_page,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {}),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff342721),
                            child: IconButton(
                                // Use Boxicons class
                                icon: Icon(
                                  Boxicons.bx_play,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {}),
                          ),
                          IconButton(
                              // Use Boxicons class
                              icon: Icon(
                                Boxicons.bx_last_page,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {}),
                          IconButton(
                              // Use Boxicons class
                              icon: Icon(
                                Boxicons.bx_repost,
                                color: Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
