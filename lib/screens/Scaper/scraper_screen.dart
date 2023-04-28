import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class ScraperScreen extends StatefulWidget {
  const ScraperScreen({Key? key}) : super(key: key);

  @override
  _ScraperScreenState createState() => _ScraperScreenState();
}

class _ScraperScreenState extends State<ScraperScreen> {
  List<dynamic> items = [];
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    /*DataController dataController = Get.put(DataController());
    var response = await http.Client().get(Uri.parse(
        'https://en.wikipedia.org/wiki/List_of_universities_in_Pakistan'));
    dom.Document document = parser.parse(response.body);

    for (int k = 0; k <= 3; k++) {
      var element = document.querySelectorAll('table>tbody')[k];
      var data = element.querySelectorAll('tr');
      for (int i = 1; i < data.length; i++) {
        dataController.addName(data[i].children[0].text.toString().trim());
        dataController.addLocation(data[i].children[1].text.toString().trim());
      }
    }*/
    var response = await http.Client().get(Uri.parse('https://dribbble.com/'));
    dom.Document document = parser.parse(response.body);
    var element = document.querySelectorAll("#main > ol")[0];
    var data = element.querySelectorAll('li.shot-thumbnail');
    for (int i = 0; i < data.length; i++) {
      var user =
          data[i].querySelectorAll("div.shot-details-container > div.user-information > a.url > span.display-name")[0];
      var img = data[i].querySelectorAll("div.js-thumbnail-base.shot-thumbnail-base.disabled-shot-section.dribbble-shot.dribbble > figure > img")[0];
      //print("Index: $i elemtent: ${data[i].children[0].toString()}");
      print(user.text.toString().trim());
      print(img.attributes['data-srcset'].toString().split(" ")[0]);
      items.add({"title": user.text.toString().trim(), "img": img.attributes['data-srcset'].toString().split(" ")[0]});
      // dataController.addName(user.text.toString().trim());
      // dataController.addLocation(img.attributes['src'].toString().trim());
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.network(
                  items[index]['img'],
                  //height: 350,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    items[index]['title'],
                    style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
