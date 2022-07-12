import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostScreen3 extends StatelessWidget {
  const PostScreen3({Key? key, this.post}) : super(key: key);
  final dynamic post;

  content(String sub) {
    Widget html = Html(
      data: sub,
    );

    return html;
  }

  Widget _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BackButton(color: Colors.white),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    double c_width = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.network(post['jetpack_featured_media_url']),
          DraggableScrollableSheet(
            maxChildSize: .8,
            initialChildSize: .7,
            minChildSize: .6,
            builder: (context, scrollController) {
              return Container(
                height: height * .5,
                padding: EdgeInsets.only(left: 0, right: 0, top: 16), //symmetric(horizontal: 19, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child: Text(
                          post['title']['rendered'],
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Container(
                          child: content(post['content']['rendered']),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          _appbar(),
        ],
      ),
    ));
  }
}
