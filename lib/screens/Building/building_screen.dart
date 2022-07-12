import 'package:flutter/material.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.redAccent,
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
                    Colors.white.withOpacity(0.20),
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                  ],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.network(
                'https://assets.stickpng.com/images/58418c9ca6515b1e0ad75a47.png',
                //height: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: size.height * 0.40,
              // width: size.width * 0.8,
              //color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New York",
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Nueva York incluye 5 distritos que se ubican donde el río Hudson desemboca en el océano Atlántico. En su centro se encuentra Manhattan, un distrito densamente poblado que se encuentra entre los principales centros comerciales, financieros y culturales del mundo.",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(left: 0, top: 25, child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)))
        ],
      ),
    );
  }
}
