import 'package:awesome_ui/screens/NftScroll/animations/animations.dart';
import 'package:flutter/material.dart';

class NFTScreen extends StatelessWidget {
  const NFTScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              const _AppBar(),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black26),
                ),
                child: Hero(
                  tag: '1',
                  child: Image.network(
                    'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/image-1.jpeg',
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 24),
              SlideAnimation(
                intervalStart: 0.4,
                begin: const Offset(0, 30),
                child: FadeAnimation(
                  intervalStart: 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DAY 74',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/profile.jpg',
                              width: 20,
                            ),
                          ),
                          SizedBox(width: 8),
                          const Text(
                            '@Mark Rise',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Who we were and what we will become are there, they are around us, they are batting, they are resting and they are being watched...More',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 8),
                      const Divider(),
                      SizedBox(height: 8),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://raw.githubusercontent.com/Flutter-ui-dev/Flutter-ui-dev/main/speed-code/nft-marketplace-ui/assets/images/user.jpeg',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text('Highest Bid Placed By'),
                        subtitle: Text(
                          'Merry Rose',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '15.97 ETH',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      const Button(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Place Bid',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '20h: 35m: 08s',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        SizedBox(width: 16),
        Text(
          'Auctions',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.headphones_battery_sharp,
          color: Colors.red,
        ),
        SizedBox(width: 16),
        const Icon(Icons.menu),
      ],
    );
  }
}
