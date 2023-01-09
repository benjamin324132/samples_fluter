import 'package:awesome_ui/screens/LinkTree/profile_screen.dart';
import 'package:awesome_ui/screens/LinkTree/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LinkTree extends StatefulWidget {
  const LinkTree({Key? key}) : super(key: key);

  @override
  State<LinkTree> createState() => _LinkTreeState();
}

class _LinkTreeState extends State<LinkTree> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    var url = Uri.parse('https://links-tree-server.glitch.me/api/v1/users');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (json.decode(response.body)['users'] != null) {
        json.decode(response.body)['users'].forEach((v) {
          users.add(User.fromJson(v));
        });
        setState(() {});
      }
    } else {
      throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
            users.length,
            (index) => ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                            user: users[index],
                          )));
                },
                child: Text("${users[index].name}"))),
      ),
    )));
  }
}
