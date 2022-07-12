import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostScreen2 extends StatelessWidget {
  const PostScreen2({Key? key, this.post}) : super(key: key);
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
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          //Image.network(post['jetpack_featured_media_url']),
          Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1594365458706-6fab3472f681?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Positioned(
                left: 20,
                top: height * .30,
                child: Container(
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey.shade200.withOpacity(0.5)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      'Health',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: height * .35,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          width: c_width,
                          height: 200,
                          child: Text(
                            post['title']['rendered'],
                            style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          DraggableScrollableSheet(
            maxChildSize: .9,
            initialChildSize: .4,
            minChildSize: .4,
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
                      /* Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text(
                      post['title']['rendered'],
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),*/
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
      )),
    );
  }
}
