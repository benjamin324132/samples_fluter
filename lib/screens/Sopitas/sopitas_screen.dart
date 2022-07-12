import 'dart:convert';
import 'package:awesome_ui/screens/Sopitas/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class SopitasScreen extends StatefulWidget {
  const SopitasScreen({Key? key}) : super(key: key);

  @override
  _SopitasScreenState createState() => _SopitasScreenState();
}

class _SopitasScreenState extends State<SopitasScreen> {
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
        body: SafeArea(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Sopitas",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30.0),
                  ),
                ],
              ),
            ),
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
                            builder: (context) => PostScreen(
                              post: posts[index],
                            ),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
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

                  /* return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostScreen(
                              post: posts[index],
                            ),
                          ));
                    },
                    title: Text(posts[index]['title']['rendered']),
                    //subtitle: subtitle((posts[index]['excerpt']['rendered'])),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        posts[index]['jetpack_featured_media_url'],
                        height: 180.0,
                        width: 120.0,
                      ),
                    ),
                    /*leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 60,
                              minHeight: 44,
                              maxWidth: 80,
                              maxHeight: 64,
                            ),
                            child: Image.network(
                                posts[index]['jetpack_featured_media_url'],
                                fit: BoxFit.cover),
                          )*/
                  );*/
                }),
          ],
        ),
      ),
    ));
  }
}
