// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class CryptoEventScreen extends StatelessWidget {
  const CryptoEventScreen({Key? key}) : super(key: key);
//'https://public.nftstatic.com/static/nft/res/nft-cex/S3/1649823896051_z6qox2udz4l193dyqrtdg6qktyw2urq8.png',
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height * 0.45,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                    'https://public.nftstatic.com/static/nft/res/nft-cex/S3/1649823896051_z6qox2udz4l193dyqrtdg6qktyw2urq8.png',
                    fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              //height: size.height * 0.85,
              //width: size.width,
              //color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                              child: Icon(Icons.arrow_back)),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(16),
                                  decoration:
                                      BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                                  child: Icon(Icons.edit)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(16),
                                  decoration:
                                      BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.redAccent,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://public.nftstatic.com/static/nft/res/nft-cex/S3/1649823896051_z6qox2udz4l193dyqrtdg6qktyw2urq8.png',
                        fit: BoxFit.cover,
                        height: size.width * 0.61,
                        width: size.width,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Avatars in Metaverse",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "In computing, avatars we are popularized in the 80s as an on screen, representation of internet",
                      style: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
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
