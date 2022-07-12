import 'package:awesome_ui/screens/NftMarketPlace/screens/nft_screen.dart';
import 'package:awesome_ui/screens/NftMarketPlace/screens/onboarding_screen.dart';
import 'package:awesome_ui/screens/NftScroll/animations/animations.dart';
import 'package:awesome_ui/screens/NftScroll/animations/slide_animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double _padding = 24;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: const _AppBar(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: const _Header(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: const SlideAnimation(child: _CategoryList()),
            ),
            SizedBox(height: 24),
            SlideAnimation(
              begin: Offset(400, 0),
              child: SizedBox(
                height: 500,
                child: PageView.builder(
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: const NFTScreen(),
                              type: PageTransitionType.fadeIn,
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black26),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'A. ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'DAY 74',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '@Mark Rise',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Hero(
                                tag: '$index',
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        index % 2 == 0
                                            ? 'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/image-0.jpg'
                                            : 'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/image-1.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  EventStat(
                                    title: '20h: 25m: 08s',
                                    subtitle: 'Remaining Time',
                                  ),
                                  EventStat(
                                    title: '15.97 ETH',
                                    subtitle: 'Highest Bid',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 22,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: BottomIcon(
              icon: Icons.home,
              isActive: true,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: BottomIcon(icon: Icons.disc_full_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: BottomIcon(icon: Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: BottomIcon(icon: Icons.badge),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: BottomIcon(icon: Icons.wallet_travel),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  const BottomIcon({Key? key, required this.icon, this.isActive = false}) : super(key: key);
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Divider(
          thickness: 2,
          indent: 25,
          endIndent: 25,
          color: isActive ? Colors.black : Colors.transparent,
        )
      ],
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({Key? key}) : super(key: key);

  final List<String> _options = const [
    'Trending',
    'Digital Arts',
    '3D Videos',
    'Games',
    'Collections',
    'Lands',
    'Real Estate',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _options.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: index == 0 ? Colors.black : null,
            ),
            padding: EdgeInsets.only(
              left: 22,
              right: index == 0 ? 22 : 0,
            ),
            child: Center(
              child: Text(
                _options[index],
                style: TextStyle(
                  fontSize: 14,
                  color: index == 0 ? Colors.white : Colors.black54,
                  fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Live',
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Auctions',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Enjoy! The latest hot acutions',
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ],
        ),
        const Icon(Icons.settings),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppLogo(),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/profile.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
