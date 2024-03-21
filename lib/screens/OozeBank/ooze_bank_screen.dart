import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'dart:math' as math;

import 'package:simple_icons/simple_icons.dart';

List items = [
    {
      "icon": SimpleIcons.uber,
      "color": Colors.pink.withOpacity(0.2),
      "title": "Uber Taxi",
      "category": "Transport",
      "total": "-\$32.45",
      "date": "4:32 PM",
    },
    {
      "icon": SimpleIcons.netflix,
      "color": Colors.blue.withOpacity(0.2),
      "title": "Netflix",
      "category": "Movie",
      "total": "-\$20.00",
      "date": "4:45 PM",
    },
    {
      "icon": SimpleIcons.shell,
      "color": Colors.pink.withOpacity(0.2),
      "title": "Shell",
      "category": "Automobile",
      "total": "-\$30.80",
      "date": "5:12 PM",
    },

    {
      "icon": SimpleIcons.youtube,
      "color": Colors.redAccent.withOpacity(0.2),
      "title": "Youtube",
      "category": "Internet",
      "total": "-\$12.45",
      "date": "5:23 PM",
    },
    {
      "icon": SimpleIcons.paypal,
      "color": Colors.greenAccent.withOpacity(0.2),
      "title": "Paypal",
      "category": "Transfer",
      "total": "-\$50.00",
      "date": "6:20 PM",
    },

    {
      "icon": SimpleIcons.amazon,
      "color": Colors.purple.withOpacity(0.2),
      "title": "Amazon",
      "category": "Food",
      "total": "-\$54.25",
      "date": "6:52 PM",
    },

    {
      "icon": SimpleIcons.newyorktimes,
      "color": Colors.tealAccent.withOpacity(0.2),
      "title": "New York Times",
      "category": "Media",
      "total": "-\$6.50",
      "date": "7:30 PM",
    },
    {
      "icon": SimpleIcons.toyota,
      "color": Colors.yellowAccent.withOpacity(0.2),
      "title": "Toyota",
      "category": "Automobile",
      "total": "-\$120.00",
      "date": "8:30 PM",
    },
 {
      "icon": SimpleIcons.aeromexico,
      "color": Colors.blueGrey.withOpacity(0.2),
      "title": "Aeromexico",
      "category": "Travel",
      "total": "-\$200.00",
      "date": "8:40 PM",
    },
     {
      "icon": SimpleIcons.jetbrains,
      "color": Colors.greenAccent.withOpacity(0.2),
      "title": "JetBrains",
      "category": "Software",
      "total": "-\$60.00",
      "date": "8:57 PM",
    },
     {
      "icon": SimpleIcons.lenovo,
      "color": Colors.red.withOpacity(0.2),
      "title": "Lenovo",
      "category": "Media",
      "total": "-\$620.00",
      "date": "10:17 PM",
    },
     {
      "icon": SimpleIcons.tinder,
      "color": Colors.cyanAccent.withOpacity(0.2),
      "title": "Tinder",
      "category": "Media",
      "total": "-\$16.00",
      "date": "10:42 PM",
    },
  ];

class OozeBankScreen extends StatelessWidget {
  const OozeBankScreen({super.key});

  final primaryColor = const Color.fromARGB(255, 189, 163, 228);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.grid_1,
                    size: 30,
                  ),
                  Icon(
                    Iconsax.user,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Text("Available balance",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\$2,034",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$3,345",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        " usd / aus \$1.64",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: math.pi / 4,
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 30,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Transform.rotate(
                    angle: math.pi / 4,
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 30,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: size.height * .60,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        items.length,
                        (index) => TransactionCard(
                          icon: items[index]["icon"],
                          color:items[index]["color"],
                          title: items[index]["title"],
                          category: items[index]["category"],
                          total: items[index]["total"],
                          date: items[index]["date"],
                        )),
                  ),
                ),
              ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Icon(
                        Icons.grid_3x3,
                        size: 30,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.category,
    required this.total,
    required this.date
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final String title, category, total, date;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.all(Radius.circular(12))),
              child:  Icon(icon, color: Colors.white,),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
               const SizedBox(
                  height: 8,
                ),
                Text(
                  category,
                  style:const TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
           const Spacer(),
            Column(
              children:  [
                Text(
                  total,
                  style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
               const SizedBox(
                  height: 8,
                ),
                Text(
                  date,
                  style:const TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ));
  }
}
