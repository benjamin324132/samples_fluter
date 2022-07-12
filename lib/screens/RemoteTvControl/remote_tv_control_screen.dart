import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RemoteTvControl extends StatefulWidget {
  const RemoteTvControl({Key? key}) : super(key: key);

  @override
  _RemoteTvControlState createState() => _RemoteTvControlState();
}

class _RemoteTvControlState extends State<RemoteTvControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    icon: Icons.power_settings_new,
                  ),
                  Text(
                    'REMOTE',
                    style: TextStyle(color: Colors.grey[500], letterSpacing: 12, fontSize: 20),
                  ),
                  Button(
                    icon: Icons.wb_sunny,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              IntrinsicHeight(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledButton(
                      widget: Column(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.volume_up),
                          SizedBox(
                            height: 20,
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: StyledButton(
                        isSquare: false,
                        widget: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    StyledButton(
                      widget: Column(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "CH",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/home.svg",
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: StyledButton(
                      widget: IconButton(
                        icon: Icon(Icons.keyboard_return),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/menu_dashbord.svg",
                        height: 27,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.network("https://cdn.worldvectorlogo.com/logos/netflix-3.svg"),
                      onPressed: () {},
                    ),
                  ),
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.network(
                        "https://cdn.worldvectorlogo.com/logos/disney--1.svg",
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.network("https://cdn.worldvectorlogo.com/logos/youtube-icon.svg"),
                      onPressed: () {},
                    ),
                  ),
                  StyledButton(
                    widget: IconButton(
                      icon: SvgPicture.network(
                        "https://cdn.worldvectorlogo.com/logos/spotify-2.svg",
                        color: Color(0xFF1DB954),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.icon = Icons.surfing,
    this.height = 20,
    this.width = 20,
    this.padding = 18,
  }) : super(key: key);
  final IconData icon;
  final double height;
  final double width;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(12), boxShadow: [
        BoxShadow(color: Colors.grey.shade500, offset: Offset(4, 4), blurRadius: 15, spreadRadius: 1),
        BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 15, spreadRadius: 1),
      ]),
      child: Icon(icon),
    );
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton({
    Key? key,
    required this.widget,
    this.padding = 8,
    this.isSquare = true,
  }) : super(key: key);
  final isSquare;
  final Widget widget;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
          borderRadius: isSquare ? BorderRadius.circular(12) : null,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade500, offset: Offset(4, 4), blurRadius: 15, spreadRadius: 1),
            BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 15, spreadRadius: 1),
          ]),
      child: widget,
    );
  }
}
