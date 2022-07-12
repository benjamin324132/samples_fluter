import 'package:awesome_ui/screens/BackPrompt/screen_holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  MySecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScreenHolder(
      scaffoldKey: _scaffoldKey,
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the second page',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
