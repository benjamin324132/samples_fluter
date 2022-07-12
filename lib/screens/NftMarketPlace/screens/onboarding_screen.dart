import 'package:awesome_ui/screens/NftMarketPlace/screens/home_screen.dart';
import 'package:awesome_ui/screens/NftScroll/animations/animations.dart';
import 'package:awesome_ui/screens/NftScroll/animations/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  final double _padding = 40;
  final _headingStyle = const TextStyle(
    fontWeight: FontWeight.w200,
    //fontFamily: 'Dsignes',
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: const _AppBar(),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                intervalEnd: 0.4,
                child: Row(
                  children: <Widget>[
                    SvgPicture.network(
                      'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/flash.svg',
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Started',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Dsignes',
                        color: Colors.black,
                        height: 1.3,
                      ),
                      children: [
                        TextSpan(
                          text: 'Discover ',
                          style: _headingStyle,
                        ),
                        TextSpan(
                          text: 'Rare \nCollections ',
                        ),
                        TextSpan(
                          text: 'Of ',
                          style: _headingStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                begin: const Offset(0, 30),
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Art & ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          //fontFamily: 'Dsignes',
                          color: Colors.black,
                          height: 1.3,
                        ),
                      ),
                      const ColoredText(text: 'NFTs'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                child: Text(
                  'Digital marketplace for crypto collectibles and non-fungible tokens',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: _padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SlideAnimation(
                    intervalStart: 0.4,
                    begin: const Offset(0, 20),
                    child: FadeAnimation(
                      intervalStart: 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          EventStat(
                            title: '12.1K+',
                            subtitle: 'Art Work',
                          ),
                          EventStat(
                            title: '1.7M+',
                            subtitle: 'Artist',
                          ),
                          EventStat(
                            title: '45K+',
                            subtitle: 'Auction',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: SlideAnimation(
                      intervalStart: 0.2,
                      child: FadeAnimation(
                        intervalEnd: 0.2,
                        child: Container(
                          padding: EdgeInsets.all(24),
                          decoration: const BoxDecoration(
                            color: Color(0xffe6d9fe),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: HomeScreen(),
                                      type: PageTransitionType.fadeIn,
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffcab2ff),
                                  ),
                                  child: const Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                              SizedBox(height: 24),
                              Text(
                                'Discover \nArtwork',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 9,
                                ),
                              ),
                              SizedBox(height: 12),
                              Divider(
                                thickness: 2,
                                endIndent: 120,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                begin: const Offset(0, 20),
                intervalStart: 0.6,
                child: FadeAnimation(
                  intervalStart: 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Supported By',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.6,
                        ),
                      ),
                      SvgPicture.network(
                        'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/binance.svg',
                        width: 24,
                      ),
                      SvgPicture.network(
                        'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/huobi.svg',
                        width: 22,
                      ),
                      SvgPicture.network(
                        'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/xrp.svg',
                        width: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const AppLogo(),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: const Center(
            child: Icon(
              Icons.wallet_giftcard,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'A.',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ColoredText extends StatelessWidget {
  const ColoredText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 0,
            left: 10,
            child: Container(
              width: 85,
              height: 30,
              color: const Color(0xffaafaff),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dsignes',
              color: Colors.black,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

class EventStat extends StatelessWidget {
  const EventStat({Key? key, required this.title, required this.subtitle}) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
