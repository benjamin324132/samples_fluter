import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartHome extends StatefulWidget {
  @override
  _SmartHomeState createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text("Smart Home"),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.greenAccent,
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: Colors.greenAccent,
                height: 35,
              ),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.greenAccent,
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                color: Colors.greenAccent,
                height: 35,
              ),
              onPressed: () {},
            ),
            ClipOval(
              child: Material(
                color: Colors.greenAccent.withOpacity(0.2), // button color
                child: InkWell(
                  splashColor: Colors.greenAccent.withOpacity(0.6), // inkwell color
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.add,
                        color: Colors.greenAccent,
                      )),
                  onTap: () {},
                ),
              ),
            ),
            IconButton(
              color: Colors.greenAccent,
              icon: SvgPicture.asset(
                "assets/icons/trash.svg",
                color: Colors.greenAccent,
                height: 35,
              ),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.greenAccent,
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                color: Colors.greenAccent,
                height: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
