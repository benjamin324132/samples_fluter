import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final dynamic message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: message['who'] == "me"
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Container(
            constraints:
               const BoxConstraints(maxWidth: 180),
            padding:const EdgeInsets.symmetric(
              horizontal: 16 * 0.75,
              vertical: 16 / 2,
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent
                  .withOpacity(message['who'] == "me" ? 1 : 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message['message'],
              style: TextStyle(
                color: message['who'] == "me"
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}