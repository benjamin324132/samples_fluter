import 'package:awesome_ui/screens/DeliveryFood/screens/home/components/image_carousel.dart';
import 'package:awesome_ui/screens/DeliveryFood/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "Delivery To".toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(color: kActiveColor),
                ),
                Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(child: SectionTitle(title: "Featured Partners", onPress: () {})),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.25,
                        child: Image.asset("assets/food/medium_1.png"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
