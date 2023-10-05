// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';


class MiniPortafolio extends StatefulWidget {
  const MiniPortafolio({Key? key}) : super(key: key);

  @override
  State<MiniPortafolio> createState() => _MiniPortafolioState();
}

class _MiniPortafolioState extends State<MiniPortafolio> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3.5, color: Color(0xff42A5F5)),
                    ),
                    child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff42A5F5),
                        backgroundImage: NetworkImage(
                          'https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/perfil.png?raw=true',
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Gianell Vusy",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Web developer",
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        // Use Boxicons class
                        icon: Icon(Boxicons.bxl_instagram),
                        onPressed: () {}),
                    IconButton(
                        // Use Boxicons class
                        icon: Icon(Boxicons.bxl_linkedin_square),
                        onPressed: () {}),
                    IconButton(
                        // Use Boxicons class
                        icon: Icon(Boxicons.bxl_github),
                        onPressed: () {})
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "7",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Years of \n work",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "+124",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Completed \n projects",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "96",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Satisfied \n customers",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xff42A5F5),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Download CV",
                              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Boxicons.bx_download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Boxicons.bxl_whatsapp,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Boxicons.bxl_messenger,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 85,
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = true;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(microseconds: 200),
                            height: 90,
                            decoration: BoxDecoration(
                              color: isSelected ? Colors.white : Colors.grey[200],
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                                child: Text(
                              "Projects",
                              style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = false;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(microseconds: 200),
                            height: 90,
                            decoration: BoxDecoration(
                              color: !isSelected ? Colors.white : Colors.grey[200],
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                                child: Text(
                              "Skills",
                              style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                if (isSelected)
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                            "https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/project1.jpg?raw=true"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                            "https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/project2.jpg?raw=true"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                            "https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/project3.jpg?raw=true"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                            "https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/project4.jpg?raw=true"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                            "https://github.com/bedimcode/responsive-mini-portfolio/blob/main/assets/img/project5.jpg?raw=true"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      Text(
                        "Frontend Developer",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Skill(
                                skill: "HTML",
                                level: "Basic",
                              ),
                              Skill(
                                skill: "CSS",
                                level: "Advanced",
                              ),
                              Skill(
                                skill: "JavaScript",
                                level: "Intermediate",
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Skill(
                                skill: "React",
                                level: "Intermediate",
                              ),
                              Skill(
                                skill: "Bootstrap",
                                level: "Intermediate",
                              ),
                              Skill(
                                skill: "Git",
                                level: "Intermediate",
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Backend Developer",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Skill(
                                skill: "PHP",
                                level: "Intermediate",
                              ),
                              Skill(
                                skill: "MySQL",
                                level: "Advance",
                              ),
                              Skill(
                                skill: "Firebase",
                                level: "Intermediate",
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Skill(
                                skill: "Python",
                                level: "Basic",
                              ),
                              Skill(
                                skill: "Node Js",
                                level: "Intermediate",
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
    required this.skill,
    required this.level,
  }) : super(key: key);
  final String skill;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Boxicons.bx_check_circle,
            color: Color(0xff42A5F5),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill,
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                level,
                style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
