import 'package:awesome_ui/screens/DeliveryFood/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class FoodDeliveryScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI Kit',
      theme: ThemeData(
        primaryColor: kAccentColor,
        scaffoldBackgroundColor: kBgColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      /// On first screen must call [SizeConfig().init(context)]
      home: HomeScreen(),
    );
  }
}
