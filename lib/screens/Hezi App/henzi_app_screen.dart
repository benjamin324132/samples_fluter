import 'dart:math';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HenziApp extends StatefulWidget {
  @override
  _HenziAppState createState() => _HenziAppState();
}

class _HenziAppState extends State<HenziApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[400],
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[400],
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Positioned(
            left: 50,
            top: 320,
            child: Container(
                height: 80.0,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      blurRadius: 75.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            left: size.width - 150,
            top: 55,
            child: Container(
                height: 80.0,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 75.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                      offset: Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            left: size.width - 100,
            top: 150,
            child: Container(
                height: 80.0,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellowAccent.withOpacity(0.45),
                      blurRadius: 56.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        16.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                )),
          ),
          Container(
              /* decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffd5fbf2).withOpacity(0.2),
                    Color(0xffe1fef7).withOpacity(0.1),
                    Color(0xfffbfbfb),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),*/
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/users/2302891/avatars/small/f1974d3162a6fa4aab574d0579b301d1.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff00C8FF),
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Center(
                              child: Text(
                                "%23",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "The world should not have made  \n me so happy, but you are here",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "237",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "892",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "93%",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Resonance",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff5abae2).withOpacity(0.2),
                        Color(0xff5abae2).withOpacity(0.4),
                        Color(0xffEE7798).withOpacity(0.4),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.network(
                            "https://raw.githubusercontent.com/abuanwar072/C0VID-19-Flutter-UI/master/assets/icons/nurse.svg",
                            width: 150,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text("Online matching",
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700)),
                            SizedBox(height: 5),
                            Text("Chat with the best match",
                                style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500)),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildAspectRatio(context, Icons.phone_in_talk, Color(0xff9CF4DF), "Sound", "8 Oportunitties"),
                      buildAspectRatio(context, Icons.phone_android, Color(0xffE8E230), "Phone", "8 Oportunitties"),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      )),
    );
  }

  Container buildAspectRatio(
    BuildContext context,
    IconData icon,
    Color color,
    String text1,
    String text2,
  ) {
    return Container(
        child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width * .4,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.1),
                  color.withOpacity(0.5),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              //color: color.withOpacity(0.6),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(child: Center(child: Icon(icon, color: color))),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(text1, style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      Text(text2, style: TextStyle(fontSize: 8, color: Colors.grey, fontWeight: FontWeight.w400))
                    ],
                  ),
                ],
              ),
            )));
  }
}

class BlurryEffect extends StatelessWidget {
  final double opacity;
  final double blurry;
  final Color shade;

  BlurryEffect(this.opacity, this.blurry, this.shade);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurry, sigmaY: blurry),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: shade.withOpacity(opacity)),
          ),
        ),
      ),
    );
  }
}
