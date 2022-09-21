import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class JobFinder extends StatefulWidget {
  const JobFinder({Key? key}) : super(key: key);

  @override
  State<JobFinder> createState() => _JobFinderState();
}

class _JobFinderState extends State<JobFinder> {
  List<String> categories = [
    "Designer",
    "Software Engineer",
    "Developer",
    "DevOps",
    "Marketing",
    "React Developer",
    "Flutter Developer"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                  height: 150.0,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellowAccent.withOpacity(0.8),
                        blurRadius: 80.0, // soften the shadow
                        spreadRadius: 8.0, //extend the shadow
                        offset: const Offset(
                          16.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Boxicons.bx_menu_alt_left,
                            color: Colors.black26,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Boxicons.bx_bell,
                            color: Colors.black26,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Find your \n',
                          style: TextStyle(fontSize: 28, color: Colors.black38),
                        ),
                        TextSpan(
                          text: 'perfect job',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          //width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!.withOpacity(0.6),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                          ),
                          child: const Center(
                            child: TextField(
                                decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 18),
                              border: InputBorder.none,
                              hintText: "Search by positions",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Boxicons.bx_search),
                              ),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!.withOpacity(0.6),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(18)),
                        ),
                        child: const Icon(Boxicons.bx_cube_alt),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            categories.length,
                            (index) => Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color(0xff54E597)
                                          : const Color.fromARGB(
                                              255, 255, 236, 25),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(
                                      categories[index],
                                      style:
                                          const TextStyle(color: Colors.black54, fontWeight: FontWeight.w800 ),
                                    ),
                                  ),
                                ))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Popular Vacancies",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Text("See more",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_google,
                    location: "Google",
                    title: "UX Designer",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_apple,
                    location: "Apple Inc.",
                    title: "Python Developer",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_twitter,
                    location: "Twitter",
                    title: "Account Manager",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_microsoft,
                    location: "Microsoft",
                    title: "Next JS Developer",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_twitch,
                    location: "Twitch",
                    title: "Java Dev",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_github,
                    location: "Github",
                    title: "Ruby on Rails",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_spotify,
                    location: "Spotify Labs",
                    title: "React Developer",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_dev_to,
                    location: "Dev to",
                    title: "UI Designer",
                  ),
                  const JobCard(
                    icon: Boxicons.bxl_adobe,
                    location: "Adobe",
                    title: "Product Manager",
                  ),
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
  const JobCard(
      {Key? key,
      required this.icon,
      required this.location,
      required this.title,
      this.bookmark = false})
      : super(key: key);
  final IconData icon;
  final String location;
  final String title;
  final bool bookmark;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: const BorderRadius.all(Radius.circular(18))),
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
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Center(
                        child: Icon(
                      icon,
                      size: 30,
                    ))),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Text(location,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.bookmark,
                  color: bookmark ? const Color(0xff54E597) : Colors.grey[700],
                ),
                const Text("3 h"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
