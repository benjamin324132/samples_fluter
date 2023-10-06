import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class TeamStats extends StatefulWidget {
  const TeamStats({super.key});

  @override
  State<TeamStats> createState() => _TeamStatsState();
}

class _TeamStatsState extends State<TeamStats> {
  List<dynamic> stats = [];
  List<dynamic> urls = [
    'https://www.apwin.com/es/liga/mexico/liga-mx/',
    'https://www.apwin.com/es/liga/england/premier-league/',
    'https://www.apwin.com/es/liga/spain/la-liga/',
    'https://www.apwin.com/es/liga/germany/bundesliga/',
    'https://www.apwin.com/es/liga/italy/serie-a/',
    'https://www.apwin.com/es/liga/netherlands/eredivisie/',
    'https://www.apwin.com/es/liga/france/ligue-1/'
  ];
  @override
  void initState() {
    getTeams();
    super.initState();
  }

  void getTeams() async {
    for (String url in urls) {
      await getData(url);
    }
  }

  getData(String url) async {
    var response = await http.Client().get(Uri.parse(url));
    dom.Document document = parser.parse(response.body);
    var element = document.querySelectorAll("table>tbody")[0];
    var data = element.querySelectorAll('tr');
    List<dynamic> league = [];
    for (int i = 0; i < data.length; i++) {
      var position = data[i].querySelectorAll("td")[0];
      var image = data[i]
          .querySelectorAll("td")[1]
          .querySelectorAll("a > div > figure > img")[0]
          .attributes['src'];
      var name = data[i].querySelectorAll("td")[1];

      var statsNode = data[i]
          .querySelectorAll("td")[data[i].querySelectorAll("td").length - 1]
          .querySelectorAll("div > a");

      List<String> games = [];
      for (int j = 0; j < statsNode.length; j++) {
        games.add(statsNode[j].text.toString());
      }

      dynamic team = {
        "postion": position.text.toString(),
        "team": name.text.toString(),
        "img": image,
        "stats": games
      };
      league.add(team);
    }
    stats.add(league);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //print(stats);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Column(
              children: [
                for (var league in stats)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Column(
                      children: [
                        for (var team in league)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(team['postion']),
                                const SizedBox(width: 5,),
                                Image.network(
                                  team['img'],
                                  width: 40,
                                  height: 40,
                                ),
                                Expanded(
                                  child: Text(team['team'], style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                //Spacer(),
                                for (String game in team['stats'])
                                  Container(
                                    height: 14,
                                    width: 14,
                                    margin:const EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: game == "D" ? Colors.redAccent : game == "V" ? Colors.greenAccent : Colors.grey,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
