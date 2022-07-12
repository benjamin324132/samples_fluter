import 'package:awesome_ui/screens/NftScroll/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NftScrollHome extends StatelessWidget {
  const NftScrollHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFTs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
