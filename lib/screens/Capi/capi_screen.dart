// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_icons/simple_icons.dart';

List items = [
  {
    "icon": SimpleIcons.mailchimp,
    "color": Color.fromARGB(255, 248, 174, 240),
    "title": "Mailchimp",
    "category": "Transport",
    "total": "-\$32.45",
    "date": "4:32 PM",
  },
  {
    "icon": SimpleIcons.uber,
    "color": Color(0xff9CE5F4),
    "title": "Uber",
    "category": "Transport",
    "total": "-\$32.45",
    "date": "4:32 PM",
  },
  {
    "icon": SimpleIcons.netflix,
    "color": Color(0xFF6DB3EC),
    "title": "Netflix",
    "category": "Movie",
    "total": "-\$20.00",
    "date": "4:45 PM",
  },
  {
    "icon": SimpleIcons.shell,
    "color": Color(0xffCEB8EC),
    "title": "Shell",
    "category": "Automobile",
    "total": "-\$30.80",
    "date": "5:12 PM",
  },
  {
    "icon": SimpleIcons.youtube,
    "color": Color(0xffFD7E81),
    "title": "Youtube",
    "category": "Internet",
    "total": "-\$12.45",
    "date": "5:23 PM",
  },
  {
    "icon": SimpleIcons.paypal,
    "color": Color(0xFF83BEA1),
    "title": "Paypal",
    "category": "Transfer",
    "total": "-\$50.00",
    "date": "6:20 PM",
  },
  {
    "icon": SimpleIcons.amazon,
    "color": Color(0xff3080E8),
    "title": "Amazon",
    "category": "Food",
    "total": "-\$54.25",
    "date": "6:52 PM",
  },
  {
    "icon": SimpleIcons.newyorktimes,
    "color": Color(0xFFA1DFD1),
    "title": "New York Times",
    "category": "Media",
    "total": "-\$6.50",
    "date": "7:30 PM",
  },
  {
    "icon": SimpleIcons.toyota,
    "color": Color(0xFFF3F377),
    "title": "Toyota",
    "category": "Automobile",
    "total": "-\$120.00",
    "date": "8:30 PM",
  },
  {
    "icon": SimpleIcons.apple,
    "color": Color(0xFFA5A5F3),
    "title": "Apple",
    "category": "Automobile",
    "total": "-\$170.00",
    "date": "3:30 PM",
  },
  {
    "icon": SimpleIcons.aeromexico,
    "color": Color(0xFFA9D3E9),
    "title": "Aeromexico",
    "category": "Travel",
    "total": "-\$200.00",
    "date": "8:40 PM",
  },
  {
    "icon": SimpleIcons.jetbrains,
    "color": Color(0xFF8AF1C1),
    "title": "JetBrains",
    "category": "Software",
    "total": "-\$60.00",
    "date": "8:57 PM",
  },
  {
    "icon": SimpleIcons.lenovo,
    "color": Color(0xFFE98079),
    "title": "Lenovo",
    "category": "Media",
    "total": "-\$620.00",
    "date": "10:17 PM",
  },
  {
    "icon": SimpleIcons.tinder,
    "color": Color(0xFF7AF5F5),
    "title": "Tinder",
    "category": "Media",
    "total": "-\$16.00",
    "date": "10:42 PM",
  },
];

class CapiScreen extends StatelessWidget {
  const CapiScreen({super.key});

  final Color background = const Color.fromARGB(255, 13, 13, 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Container(
              height: 45,
              width: 45,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   colors: [
                     Color.fromARGB(255, 206, 241, 239),
                     Color.fromARGB(255, 248, 241, 247),
                     Color.fromARGB(255, 248, 219, 245),
                   ],
                 ),
               ),
               child: Icon(Iconsax.home, color: Colors.black,),
             ),
            
            Icon(Iconsax.chart, color: Colors.white70,),
            Icon(Iconsax.wallet, color: Colors.white70,),
            Icon(Iconsax.user, color: Colors.white70,),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.setting_4,
                      color: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/users/2302891/avatars/small/f1974d3162a6fa4aab574d0579b301d1.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      'Okey your spend',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 214, 245, 237),
                        const Color.fromARGB(255, 192, 241, 230),
                      ]),
                    ),
                    GradientText(
                      '\$8,501',
                      style: const TextStyle(
                          fontSize: 42, fontWeight: FontWeight.w500),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 237, 247, 245),
                        Color.fromARGB(255, 197, 216, 211),
                        Color.fromARGB(255, 188, 196, 194),
                      ]),
                    ),
                    Text(
                      "Update yesterday at 9am",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    GradientText(
                      'Bills',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 237, 247, 245),
                        Color.fromARGB(255, 225, 233, 231),
                        Color.fromARGB(255, 219, 226, 224),
                      ]),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      items.length,
                      (index) => TransactionCard(
                            icon: items[index]["icon"],
                            color: items[index]["color"],
                            title: items[index]["title"],
                            category: items[index]["category"],
                            total: items[index]["total"],
                            date: items[index]["date"],
                          )),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "Highest expediture",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TransactionCard2(
                      icon: Iconsax.shopping_bag,
                      category: "Shopping",
                      total: "-\$30.80",
                      date: "50%",
                    ),
                    TransactionCard2(
                      icon: Iconsax.folder,
                      category: "Storage",
                      total: "-\$60.80",
                      date: "70%",
                    ),
                    TransactionCard2(
                      icon: Iconsax.pet,
                      category: "Pet",
                      total: "-\$120.00",
                      date: "10%",
                    ),
                    TransactionCard2(
                      icon: Iconsax.home,
                      category: "Home",
                      total: "-\$30.00",
                      date: "50%",
                    ),
                    TransactionCard2(
                      icon: Iconsax.car,
                      category: "Transport",
                      total: "-\$20.00",
                      date: "40%",
                    ),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {Key? key,
      required this.icon,
      required this.color,
      required this.title,
      required this.category,
      required this.total,
      required this.date})
      : super(key: key);
  final IconData icon;
  final Color color;
  final String title, category, total, date;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        width: 160,
        height: 200,
        decoration: BoxDecoration(
            color: color.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 51, 51),
                    shape: BoxShape.circle),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    total,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class TransactionCard2 extends StatelessWidget {
  const TransactionCard2(
      {Key? key,
      required this.icon,
      required this.category,
      required this.total,
      required this.date})
      : super(key: key);
  final IconData icon;
  final String category, total, date;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: Colors.white70,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  total,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  date,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ],
        ));
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
