import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
class PaymentTrackerScreen extends StatelessWidget {
 const PaymentTrackerScreen({Key? key}) : super(key: key);

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF8F8F9),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Icon(Iconsax.arrow_left_2),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF8F8F9),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Icon(Iconsax.notification),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 170,
                      margin: const EdgeInsets.only(left: 12),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber.withOpacity(0.23)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                SimpleIcons.visa,
                                size: 30,
                                color: Colors.black,
                              ),
                              Text(
                                "•••• 3745",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Text("\$5,725",
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 170,
                      margin: const EdgeInsets.only(left: 12),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pinkAccent.withOpacity(0.13)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                SimpleIcons.americanexpress,
                                size: 30,
                                color: Colors.black,
                              ),
                              Text(
                                "•••• 1145",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Text("\$9,225",
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 170,
                      margin: const EdgeInsets.only(left: 12),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue.withOpacity(0.2)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                SimpleIcons.mastercard,
                                size: 30,
                                color: Colors.black,
                              ),
                              Text(
                                "•••• 3541",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const Text("\$2,025",
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF8F8F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Icon(Iconsax.arrow_left),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF8F8F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Icon(Iconsax.arrow_3),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Top Up",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF8F8F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Icon(Iconsax.add),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Another",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transactions",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
              )
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
              decoration:  BoxDecoration(
                  color: color,
                  borderRadius:
                     const BorderRadius.all(Radius.circular(12))),
              child:  Icon(icon),
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
