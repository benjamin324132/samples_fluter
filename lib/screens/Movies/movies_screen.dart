import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'Movie.dart';
import 'dart:convert';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movie> movies = [];

  @override
  void initState() {
    getMovies();
    super.initState();
  }

  void getMovies() async {
    var url = Uri.parse('https://ade-server.glitch.me/api/v1/movies');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      List<Movie> result = (json.decode(response.body)['movies'] as List)
          .map((data) => Movie.fromJson(data))
          .toList();
      setState(() {
        movies = result;
      });
    } else {
      throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 11, 13),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 80,),
           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Text("Explore", style: TextStyle(color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
              ),),
            ),
           const SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      //width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 29, 31, 36),
                        borderRadius:  BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Center(
                        child: TextField(
                            decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                          border: InputBorder.none,
                          hintText: "Search...",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 98, 104, 115)),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(Iconsax.search_normal,color: Color.fromARGB(255, 98, 104, 115),),
                          ),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration:const BoxDecoration(
                      color: Color.fromARGB(255, 29, 31, 36),
                      borderRadius:  BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Icon(Iconsax.setting, color: Color.fromARGB(255, 98, 104, 115),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // just for demo
                itemCount: movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1 / 1.75,
                ),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          "${movies[index].image}",
                          fit: BoxFit.contain,
                          //height: 220,
                        ),
                      ),
                    const  SizedBox(
                        height: 5,
                      ),
                      Text("${movies[index].title}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:const TextStyle(
                            fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "${movies[index].rating}",style:const TextStyle(
                          fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
