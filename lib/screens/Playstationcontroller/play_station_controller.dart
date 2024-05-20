import 'package:awesome_ui/screens/Playstationcontroller/components/playstation.dart';
import 'package:flutter/material.dart';

class PlayStationControllerScreen extends StatelessWidget {
  const PlayStationControllerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // set the orientation to be landscape
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
    ]);*/
    return PlayStationController();
  }
}
