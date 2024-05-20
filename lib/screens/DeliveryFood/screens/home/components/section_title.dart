import 'package:awesome_ui/screens/DeliveryFood/constants.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title, required this.onPress}) : super(key: key);
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(onPressed: onPress, style: TextButton.styleFrom(foregroundColor: kActiveColor), child: Text("See All"))
      ],
    );
  }
}
