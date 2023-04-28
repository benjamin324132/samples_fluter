import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WeaterAppScreen extends StatefulWidget {
  const WeaterAppScreen({Key? key}) : super(key: key);

  @override
  State<WeaterAppScreen> createState() => _WeaterAppScreenState();
}

class _WeaterAppScreenState extends State<WeaterAppScreen> {
  Color primaryColor = const Color(0xFFFFE142);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Iconsax.menu),
                  Text(
                    'Paris',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  Opacity(opacity: 0, child: Icon(Iconsax.menu)),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "Friday, 24 July",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text("Sunny",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              const Text("31°",
                  style: TextStyle(
                      fontSize: 160,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Daily sumary",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Now it feels like 34, it feels hot because of the direct sun, Today the temperature is felt inteh range from 31 to 27",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Iconsax.wind,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "4 KM/h",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Windy",
                          style: TextStyle(color: primaryColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Iconsax.cloud,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "62 %",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(color: primaryColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Iconsax.eye,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1.6 KM",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Visibility",
                          style: TextStyle(color: primaryColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Daily sumary",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:const [
                    ForecastCard(
                      temp: "23°",
                      icon: Iconsax.cloud_drizzle,
                      date: "25 Jul",
                    ),
                    ForecastCard(
                      temp: "20°",
                      icon: Iconsax.cloud_snow,
                      date: "26 Jul",
                    ),
                   ForecastCard(
                      temp: "23°",
                      icon: Iconsax.sun,
                      date: "27 Jul",
                    ),
                    ForecastCard(
                      temp: "23°",
                      icon: Iconsax.cloud_cross,
                      date: "28 Jul",
                    ),
                    ForecastCard(
                      temp: "25°",
                      icon: Iconsax.cloud_lightning,
                      date: "29 Jul",
                    ),
                    ForecastCard(
                      temp: "28°",
                      icon: Iconsax.cloud_drizzle,
                      date: "30 Jul",
                    ),
                    ForecastCard(
                      temp: "32°",
                      icon: Iconsax.cloud_fog,
                      date: "31 Jul",
                    ),
                    ForecastCard(
                      temp: "23°",
                      icon: Iconsax.cloud_change,
                      date: "25 Jul",
                    ),
                    ForecastCard(
                      temp: "23°",
                      icon: Iconsax.cloud_sunny,
                      date: "25 Jul",
                    ),
                    ForecastCard(
                      temp: "23°",
                      icon: Iconsax.cloud_drizzle,
                      date: "25 Jul",
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

class ForecastCard extends StatelessWidget {
  const ForecastCard({
    Key? key,
    this.temp = "26°",
    this.icon = Iconsax.sun,
    this.date = "25 Jul"
  }) : super(key: key);
  final String temp;
  final IconData icon;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Column(
        children:  [
          Text(
            temp,
            style:const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
         const SizedBox(
            height: 5,
          ),
          Icon(
            icon,
            color: Colors.black,
          ),
         const SizedBox(
            height: 5,
          ),
          Text(
            date,
            style:const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
