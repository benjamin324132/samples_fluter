import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankingApp extends StatefulWidget {
  @override
  _BankingAppState createState() => _BankingAppState();
}

class _BankingAppState extends State<BankingApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffEFF3F5),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          height: 60,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF1e1d29)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: Colors.white,
                  icon: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.white,
                  icon: SvgPicture.asset(
                    "assets/icons/notification.svg",
                    color: Colors.white,
                    height: 28,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.white,
                  icon: SvgPicture.asset(
                    "assets/icons/trash.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.white,
                  icon: SvgPicture.asset(
                    "assets/icons/user.svg",
                    color: Colors.white,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Home", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.black,
                        icon: SvgPicture.asset(
                          "assets/icons/Search.svg",
                          color: Colors.black,
                          height: 18,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        color: Colors.black,
                        icon: SvgPicture.asset(
                          "assets/icons/notification.svg",
                          color: Colors.black,
                          height: 18,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              //overflow: Overflow.clip,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1e1d29),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      //SvgPicture.asset("assets/icons/Trash.svg"),
                      Icon(Icons.add, color: Colors.white)
                    ],
                  ),
                ),
                Dismissible(
                  key: Key('123'),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {},
                  /*background: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF1e1d29),
                      //borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        //SvgPicture.asset("assets/icons/Trash.svg"),
                        Icon(Icons.add, color: Colors.red)
                      ],
                    ),
                  ),*/
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple[300]!,
                          Color(0xFF06A285),
                          Color(0xFF06A285),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text("Current Balance",
                                  style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500)),
                              SizedBox(height: 13),
                              Text("56,899.34",
                                  style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.w700)),
                              SizedBox(height: 6),
                              Text("USD/WUR",
                                  style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500)),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Today", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 15,
                ),
                Container(
                    child: Row(
                  children: [
                    Container(
                        decoration:
                            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                          child: SvgPicture.asset(
                            "assets/icons/nike.svg",
                            color: Colors.black,
                            height: 15,
                          ),
                        )),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text("Nike Store",
                            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("14 May -13:03",
                            style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '-'),
                          TextSpan(
                            text: '\$256.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '56'),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
