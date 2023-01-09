import 'dart:convert';
import 'package:awesome_ui/screens/Notes/add_screen.dart';
import 'package:awesome_ui/screens/Notes/edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<dynamic> posts = [];
  bool loading = true;
  @override
  void initState() {
    getPosts();
    super.initState();
  }

  void getPosts() async {
    var url = Uri.parse('https://ade-server.glitch.me/api/v1/posts');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      setState(() {
        posts = jsonDecode(response.body);
        loading = false;
      });
    } else {
      throw Exception("Error");
    }
  }

  void navigateAddScreen() async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddScreen()),
    );

    if (result != null) {
      getPosts();
    }
  }

  void navigateEditScreen(dynamic data) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditScreen(data: data)),
    );

    if (result != null) {
      getPosts();
    }
  }

  void deletePost(id) async {
    var url = Uri.parse('https://ade-server.glitch.me/api/v1/posts/$id');
    await http.delete(
      url,
      headers: {
        "Content-Type": "application/json",
      },
    );
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7B61FF),
        onPressed: navigateAddScreen,
        child: const Icon(Iconsax.note_add),
      ),
      body: loading ? const Center(
        child:  CircularProgressIndicator(
          color:  Color(0xFF7B61FF),
        ),
      ) : SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Container(
                margin: (index + 1) != posts.length
                    ? const EdgeInsets.only(bottom: 10)
                    : const EdgeInsets.only(bottom: 65),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              posts[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(posts[index]['body']),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            navigateEditScreen(posts[index]);
                          },
                          icon: const Icon(Iconsax.edit)),
                      IconButton(
                          onPressed: () {
                            deletePost(posts[index]['_id']);
                          },
                          icon: const Icon(Iconsax.trash))
                    ],
                  ),
                ),
              );
            }),
      )),
    );
  }
}
