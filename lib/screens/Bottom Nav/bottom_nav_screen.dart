import 'dart:ui';

import 'package:flutter/material.dart';

const _cardColor = Color(0xff5f40fb);
const _maxHeight = 350.0;
const _minHeight = 70.0;

class BottomAnimationNav extends StatefulWidget {
  @override
  _BottomAnimationNavState createState() => _BottomAnimationNavState();
}

class _BottomAnimationNavState extends State<BottomAnimationNav> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _expanded = false;
  double _currentHeight = _minHeight;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuWidth = size.width * 0.5;
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.primaries[index % Colors.primaries.length]),
                  ),
                );
              }),
          GestureDetector(
            onVerticalDragUpdate: _expanded
                ? (details) {
                    setState(() {
                      final newHeight = _currentHeight - details.delta.dy;
                      _controller.value = _currentHeight / _maxHeight;
                      _currentHeight = newHeight.clamp(_minHeight, _maxHeight);
                    });
                  }
                : null,
            onVerticalDragEnd: _expanded
                ? (details) {
                    if (_currentHeight < _maxHeight / 1.5) {
                      _controller.reverse();
                      _expanded = false;
                    } else {
                      _expanded = true;
                      _controller.forward(from: _currentHeight / _maxHeight);
                      _currentHeight = _maxHeight;
                    }
                  }
                : null,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, snapshot) {
                final value = const ElasticInOutCurve(0.7).transform(_controller.value);
                return Stack(
                  children: [
                    Positioned(
                        height: lerpDouble(_minHeight, _currentHeight, value),
                        left: lerpDouble(size.width / 2 - menuWidth / 2, 0, value),
                        width: lerpDouble(menuWidth, size.width, value),
                        bottom: lerpDouble(40.0, 0.0, value),
                        child: Container(
                          decoration: BoxDecoration(
                              color: _cardColor,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20), bottom: Radius.circular(lerpDouble(20.0, 0.0, value)!))),
                          child: _expanded
                              ? Opacity(opacity: _controller.value, child: buildExpandedContent())
                              : buildMenuContent(),
                        )),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildExpandedContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 80,
              width: 80,
            ),
            SizedBox(height: 15),
            Text(
              "Last Century",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 15),
            Text(
              "Bloody tear",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.shuffle),
                Icon(Icons.pause),
                Icon(Icons.playlist_add),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.calendar_today),
        GestureDetector(
            onTap: () {
              setState(() {
                _expanded = true;
                _currentHeight = _maxHeight;
                _controller.forward(from: 0.0);
              });
            },
            child: Icon(Icons.calendar_today)),
        Icon(Icons.calendar_today),
      ],
    );
  }
}
