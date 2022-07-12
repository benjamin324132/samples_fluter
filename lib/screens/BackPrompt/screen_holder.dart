import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class ScreenHolder extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title;
  final Widget body;
  final FloatingActionButton floatingActionButton;

  const ScreenHolder(
      {Key? key,
      required this.scaffoldKey,
      required this.title,
      required this.body,
      required this.floatingActionButton})
      : super(key: key);

  @override
  ScreenHolderState createState() => ScreenHolderState();
}

class ScreenHolderState extends State<ScreenHolder> {
  @override
  void initState() {
    super.initState();
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: widget.body,
          floatingActionButton:
              widget.floatingActionButton // This trailing comma makes auto-formatting nicer for build methods.
          ),
      onWillPop: _onWillPop,
    );
  }
}
