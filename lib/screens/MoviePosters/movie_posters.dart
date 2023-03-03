import 'package:flutter/material.dart';

import 'Movies/century_woman.dart';
import 'Movies/frances_ha_movie.dart';
import 'Movies/frank_movie.dart';
import 'Movies/shame_movie.dart';

class MoviesPosters extends StatelessWidget {
  const MoviesPosters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(children: [
      const SizedBox(
        height: 50,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FrankMovie()));
        },
        child: const Text("Frank"),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SahmeMovie()));
        },
        child: const Text("Shame"),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FrancesHaMovie()));
        },
        child: const Text("Frances Ha"),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CenturyWoman()));
        },
        child: const Text("20 Century Woman"),
      ),
    ])))));
  }
}
