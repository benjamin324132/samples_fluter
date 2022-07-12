import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, this.post}) : super(key: key);
  final dynamic post;

  content(String sub) {
    Widget html = Html(
      data: sub,
    );

    return html;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(post['jetpack_featured_media_url']),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                post['title']['rendered'],
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                child: content(post['content']['rendered']),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
