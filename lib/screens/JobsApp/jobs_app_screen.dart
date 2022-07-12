import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class JobsApp extends StatefulWidget {
  const JobsApp({Key? key}) : super(key: key);

  @override
  _JobsAppState createState() => _JobsAppState();
}

class _JobsAppState extends State<JobsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.pinkAccent,
                  icon: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: Colors.pinkAccent,
                    height: 32,
                  ),
                  onPressed: () {},
                ),
                Container(
                  width: 5.0,
                  height: 5.0,
                  decoration: new BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            IconButton(
              color: Colors.grey[500],
              icon: SvgPicture.asset(
                "assets/icons/hearth.svg",
                color: Colors.grey[500],
                height: 32,
              ),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.grey[500],
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                color: Colors.grey[500],
                height: 32,
              ),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.grey[500],
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                color: Colors.grey[500],
                height: 32,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      "assets/icons/menu_dashbord.svg",
                      width: 23,
                      height: 23,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      "assets/icons/notification.svg",
                      width: 23,
                      height: 23,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[200]!.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                          border: InputBorder.none,
                          hintText: "Search for job",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              "assets/icons/Search.svg",
                              color: Colors.grey[700],
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.brightness_5,
                              color: Colors.grey[700],
                            ),
                          ))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    card(context, "Marketing", Colors.redAccent, "assets/images/jobs2.png"),
                    card(context, "Finance", Colors.blueAccent, "assets/images/jobs1.png"),
                    card(context, "Crypto", Colors.yellowAccent, "assets/images/jobs3.png"),
                  ])),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jobs for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              JobCard(
                img: "assets/icons/google.svg",
                location: "Google, New York",
                title: "UX Designer",
              ),
              JobCard(
                img: "assets/icons/apple.svg",
                location: "Apple, San Mateo",
                title: "Python Developer",
              ),
              JobCard(
                img: "assets/icons/twitter.svg",
                location: "Twitter, Los Angeles",
                title: "Account Manager",
              ),
              JobCard(
                img: "assets/icons/microsoft.svg",
                location: "Microsoft, New York",
                title: "Next JS Developer",
              ),
              JobCard(
                img: "assets/icons/nike.svg",
                location: "Nike, San Francisco",
                title: "Software Ing.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container card(BuildContext context, String title, Color color, String img) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      height: 180,
      width: 230,
      decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(32))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 80,
                width: 80,
                decoration: new BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Icon(
                Icons.bookmark,
                color: Colors.pinkAccent,
              ),
            ),
            Positioned(
              left: 5,
              top: 5,
              child: Container(
                height: 110,
                width: 110,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Transform(
                      alignment: Alignment.center, transform: Matrix4.rotationY(math.pi), child: Image.asset(img)),
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 115,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                  Text("72 Jobs open")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.img,
    required this.location,
    required this.title,
  }) : super(key: key);
  final String img;
  final String location;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 90,
        margin: EdgeInsets.only(top: 25),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 65,
                      width: 65,
                      decoration:
                          BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                          child: SvgPicture.asset(
                        img,
                        height: 30,
                        width: 30,
                      ))),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(location,
                          style: TextStyle(fontSize: 15, color: Colors.grey[700], fontWeight: FontWeight.w600)),
                      Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                      Text("\$10k - \$15k / Month", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.bookmark_outline,
                    color: Colors.grey,
                  ),
                  Text("3 h"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
