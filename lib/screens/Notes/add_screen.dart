import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController _title = TextEditingController();
  TextEditingController _body = TextEditingController();

  void addNewPost() async {
    var url = Uri.parse('https://ade-server.glitch.me/api/v1/posts');
    var response = await http.post(
      url,
      body: jsonEncode({
        'title': _title.text,
        'body': _body.text,
        'image':
            'https://cdn.dribbble.com/userupload/2645324/file/original-3a6aaf3d0f9d96c648e00f53fcba9611.jpg'
      }),
      headers: {
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            TextField(
              controller: _title,
              decoration: const InputDecoration(
                hintText: "Title",
                filled: true,
                fillColor: Color(0xFFF8F8F9),
                hintStyle: TextStyle(
                  color: Color(0xFFB8B5C3),
                ),
                border: defaultOutlineInputBorder,
                enabledBorder: defaultOutlineInputBorder,
                focusedBorder: defaultOutlineInputBorder,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _body,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Body",
                filled: true,
                fillColor: Color(0xFFF8F8F9),
                hintStyle: TextStyle(
                  color: Color(0xFFB8B5C3),
                ),
                border: defaultOutlineInputBorder,
                enabledBorder: defaultOutlineInputBorder,
                focusedBorder: defaultOutlineInputBorder,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7B61FF),
                minimumSize: const Size(double.infinity, 45),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: addNewPost,
              child: const Text("Add", style: TextStyle(color: Colors.white)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

const OutlineInputBorder defaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.all(Radius.circular(12)),
);
