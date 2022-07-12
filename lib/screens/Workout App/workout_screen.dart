import 'package:awesome_ui/screens/Workout%20App/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkOutScreen extends StatefulWidget {
  @override
  _WorkOutScreenState createState() => _WorkOutScreenState();
}

class _WorkOutScreenState extends State<WorkOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Hello, Dayat Kiet",
          style: TextStyle(color: Color(0xff141313), fontSize: 18),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              color: Colors.white,
            ),
            child: IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/menu_dashbord.svg",
                  width: 23,
                  height: 23,
                  color: Colors.black,
                ),
                onPressed: () {
                  print("Press");
                }),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/notification.svg",
                        width: 28,
                        height: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print("Press");
                      }),
                  Positioned(
                      top: 8,
                      right: 12,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFEE376E),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xfffbfbfb),
                Color(0xfff7f7fb),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find Your", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400)),
                        Text("Workout Class", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
                      ],
                    ),
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
                      boxShadow: <BoxShadow>[
                        BoxShadow(color: Colors.grey.withOpacity(0.22), blurRadius: 13, offset: Offset(3, 3))
                      ]),
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
                                color: Colors.blueAccent,
                              )))),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Progress", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("See Details",
                            style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.w500))
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.green[200]!,
                            Colors.blueAccent,
                            Colors.redAccent,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    ProgressWidget(
                                        value: 70,
                                        totalValue: 100,
                                        activeColor: Colors.white,
                                        backgroundColor: Color(0xffb8bfce).withOpacity(.3),
                                        title: "Good Review",
                                        durationTime: 500),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Text("Great!",
                                        style:
                                            TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.w700)),
                                    SizedBox(height: 13),
                                    Text("Your class almost \n completed",
                                        style:
                                            TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500)),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              top: 15,
                              right: 25,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .28,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildAspectRatio(context, Icons.ac_unit, Colors.blueAccent, "Work out time", "232 Min"),
                      buildAspectRatio(context, Icons.live_tv_rounded, Colors.redAccent, "Hearth Rate", "60 Beats"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recommendation Class", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("See More",
                            style: TextStyle(fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.w500))
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(.2),
                            ),
                            BoxShadow(
                              offset: Offset(-3, 0),
                              blurRadius: 15,
                              color: Colors.grey.withOpacity(.1),
                            )
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(13)),
                              child: Container(
                                height: 55,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.redAccent,
                                ),
                                child: Image.network(
                                  'https://cdn.dribbble.com/users/4104229/screenshots/15600644/media/ce4f0b632de4d5757896c9122569cd50.jpg',
                                  height: 50,
                                  width: 70,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            title: Text("Yoga Class",
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700)),
                            subtitle: Text(
                              "With Rachel Wisdom",
                              style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.favorite_outline,
                              size: 30,
                              color: Colors.redAccent,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AspectRatio buildAspectRatio(
    BuildContext context,
    IconData icon,
    MaterialAccentColor blueAccent,
    String text1,
    String text2,
  ) {
    return AspectRatio(
        aspectRatio: 1,
        child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width * .8,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(35)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Center(child: Icon(icon, color: Colors.white))),
                  SizedBox(height: 20),
                  Text(text1, style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text(text2, style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700))
                ],
              ),
            )));
  }
}
