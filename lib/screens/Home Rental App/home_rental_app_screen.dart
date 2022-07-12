import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeRentalApp extends StatefulWidget {
  const HomeRentalApp({Key? key}) : super(key: key);

  @override
  _HomeRentalAppState createState() => _HomeRentalAppState();
}

class _HomeRentalAppState extends State<HomeRentalApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Marimar",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          "Lets find your best residence!",
                          style: TextStyle(color: Color(0xff141313), fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          boxShadow: <BoxShadow>[
                            BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 10),
                          ],
                        ),
                        child: Image.network(
                            "https://yt3.ggpht.com/ytc/AAUvwnjSRt8sIbeM7P--pHoUDh67sDhaNTCMF_XiNOCvUw=s68-c-k-c0x00ffffff-no-rj"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          border: InputBorder.none,
                          hintText: "Search for course",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: SizedBox(
                              width: 50,
                              child: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(13)),
                                ),
                                child: IconButton(
                                    icon: SvgPicture.asset(
                                      "assets/icons/hearth.svg",
                                      width: 25,
                                      height: 25,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      print("Press");
                                    })),
                          ))),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration:
                                BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "All",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "Appartament",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "Townhouse",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "Villa",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "Appartament",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                              child: Text(
                                "Appartament",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best For you",
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          card(context,
                              "https://images.unsplash.com/photo-1503891450247-ee5f8ec46dc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                          card(context,
                              "https://images.unsplash.com/photo-1471306224500-6d0d218be372?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                          card(context,
                              "https://images.unsplash.com/photo-1446630073557-fca43d580fbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                          card(context,
                              "https://images.unsplash.com/photo-1544540311-05e563c71525?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                        ]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container card(BuildContext context, String img) {
    return Container(
      height: 360,
      width: 240,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(32))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(img),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey.shade200.withOpacity(0.5)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Nomaden Oman Sketu",
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "San Diego, California, USA",
              style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "\$${120} / Month",
              style: TextStyle(color: Colors.blueAccent, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
