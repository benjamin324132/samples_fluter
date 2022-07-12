import 'dart:convert';
import 'package:awesome_ui/screens/SopitasV2/post_screenV2.dart';
import 'package:awesome_ui/screens/SopitasV2/post_second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

class SopitasScreen2 extends StatefulWidget {
  const SopitasScreen2({Key? key}) : super(key: key);

  @override
  _SopitasScreenState2 createState() => _SopitasScreenState2();
}

class _SopitasScreenState2 extends State<SopitasScreen2> {
  var posts = [];
  @override
  void initState() {
    // TODO: implement initState
    onFetch();
    super.initState();
  }

  onFetch() async {
    var url = "https://www.sopitas.com/wp-json/wp/v2/posts";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(response.body);
      print(data);
      setState(() {
        posts = data;
      });
    } else {
      print("Error");
      throw Exception("Error");
    }
  }

  subtitle(String sub) {
    Widget html = Html(
      data: sub,
    );

    return html;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Discover",
                    style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 45.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "News from all over the world",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 18.0),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFC4BDB1).withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Center(
                      child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 19, fontWeight: FontWeight.bold),
                              prefixIcon: SizedBox(
                                  width: 50,
                                  child: Icon(
                                    Icons.search,
                                    size: 35,
                                    color: Colors.grey,
                                  )),
                              suffixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                                child: IconButton(
                                    icon: Icon(Icons.settings),
                                    onPressed: () {
                                      print("Press");
                                    }),
                              ))),
                    ),
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
                        "Breaking News",
                        style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            for (var post in posts)
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostScreen3(
                                          post: post,
                                        ),
                                      ));
                                },
                                child: card(context, post['jetpack_featured_media_url'], post['title']['rendered']),
                              )
                          ]))
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.black,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "Health",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "Sports",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "Art",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "Politics",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "Movies",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            border: Border(
                                bottom: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                            child: Text(
                              "International",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PostScreen2(
                                  post: posts[index],
                                ),
                              ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(posts[index]['jetpack_featured_media_url']),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                posts[index]['title']['rendered'],
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text("Sopitas 1 h"),
                                  ),
                                  Container(
                                    child: Icon(Icons.share),
                                  )
                                ],
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }

  Container card(BuildContext context, String img, String title) {
    return Container(
      height: 350,
      width: 350,
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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(img),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "4 hours ago By David Simpson",
              style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
