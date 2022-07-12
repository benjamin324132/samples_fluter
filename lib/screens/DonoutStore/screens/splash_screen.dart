import 'dart:async';

import 'package:awesome_ui/screens/DonoutStore/core/animations/page_transition.dart';
import 'package:awesome_ui/screens/DonoutStore/core/utils/navigation.dart';
import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _next();
    super.initState();
  }

  _next() {
    Timer(
      const Duration(milliseconds: 450),
      () {
        Navigation.push(
          context,
          customPageTransition: PageTransition(
            child: const HomeScreen(),
            type: PageTransitionType.fadeIn,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(),
    );
  }
}
