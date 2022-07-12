import 'package:awesome_ui/screens/Playstationcontroller/components/left_side_buttons.dart';
import 'package:awesome_ui/screens/Playstationcontroller/components/right_side_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlayStationController extends StatefulWidget {
  const PlayStationController({Key? key}) : super(key: key);

  @override
  _PlayStationControllerState createState() => _PlayStationControllerState();
}

class _PlayStationControllerState extends State<PlayStationController> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Stack(
        children: [
          Row(
            children: [
              // CONTROLS ON THE LEFT SIDE
              Expanded(
                flex: 3,
                child: Container(
                  child: LeftSideButtons(),
                ),
              ),

              // GAP IN THE MIDDLE
              Expanded(
                child: Container(),
              ),

              // CONTROLS ON THE RIGHT SIDE
              Expanded(
                flex: 3,
                child: Container(
                  child: RightSideButtons(),
                ),
              ),
            ],
          ),

          // TEXT FOR DECORATION
          Container(
            alignment: Alignment(0, -0.5),
            child: Text(
              'P  L  A  Y  S  T  A  T  I  O  N',
              style: TextStyle(color: Colors.grey[500], fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            child: Text(
              'F L U T T E R',
              style: TextStyle(color: Colors.grey[400], fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.5),
            child: Text(
              'C R E A T E D B Y K O K O',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      )),
    );
  }
}
