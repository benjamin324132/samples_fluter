import 'package:awesome_ui/screens/DeliveryFood/constants.dart';
import 'package:flutter/material.dart';

import '../../../demoData.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: [
          PageView.builder(
              itemCount: demoBigImages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(demoBigImages[index]),
                );
              }),
          Positioned(
              bottom: defaultPadding,
              right: defaultPadding,
              child: Row(
                children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding / 2),
                    child: IndicatorDot(isActive: index == _currentPage),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 4,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38, borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
