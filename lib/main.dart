import 'package:awesome_ui/screens/AnimatedBackground/animated_background_screen.dart';
import 'package:awesome_ui/screens/BackPrompt/MyHomePage.dart';
import 'package:awesome_ui/screens/Bank%20Cards/bank_app.dart';
import 'package:awesome_ui/screens/Banking%20App/banking_app_screen.dart';
import 'package:awesome_ui/screens/BoardingPass/boarding_pass_screen.dart';
import 'package:awesome_ui/screens/Bottom%20Nav/bottom_nav_screen.dart';
import 'package:awesome_ui/screens/Building/building_screen.dart';
import 'package:awesome_ui/screens/Checkout/checkout_screen.dart';
import 'package:awesome_ui/screens/Clock/main.dart';
import 'package:awesome_ui/screens/CryptoEventApp/crypto_event_screen.dart';
import 'package:awesome_ui/screens/CryptoWallet/crypto_wallet_screen.dart';
import 'package:awesome_ui/screens/DayAndNight/screens/login/login_screen.dart';
import 'package:awesome_ui/screens/DeliveryFood/food_delivery_screen.dart';
import 'package:awesome_ui/screens/DonoutStore/donout_store_screen.dart';
import 'package:awesome_ui/screens/FlappyBird/homepage.dart';
import 'package:awesome_ui/screens/Hezi%20App/henzi_app_screen.dart';
import 'package:awesome_ui/screens/Home%20Rental%20App/home_rental_app_screen.dart';
import 'package:awesome_ui/screens/JobsApp/jobs_app_screen.dart';
import 'package:awesome_ui/screens/Mini%20Portafolio/mini_portafolio_screen.dart';
import 'package:awesome_ui/screens/NftMarketPlace/screens/onboarding_screen.dart';
import 'package:awesome_ui/screens/NftScroll/nft_scroll_home.dart';
import 'package:awesome_ui/screens/Paint%20App/paint_app_screen.dart';
import 'package:awesome_ui/screens/Playstationcontroller/play_station_controller.dart';
import 'package:awesome_ui/screens/PodcastApp/podcast_player_screen.dart';
import 'package:awesome_ui/screens/Poster/poster_screen.dart';
import 'package:awesome_ui/screens/RemoteTvControl/remote_tv_control_screen.dart';
import 'package:awesome_ui/screens/Scaper/scraper_screen.dart';
import 'package:awesome_ui/screens/Signup/signup_screen.dart';
import 'package:awesome_ui/screens/SmartHome/smart_home_screen.dart';
import 'package:awesome_ui/screens/Socket/socket_screen.dart';
import 'package:awesome_ui/screens/Sopitas/sopitas_screen.dart';
import 'package:awesome_ui/screens/SopitasV2/sopitas_screenV2.dart';
import 'package:awesome_ui/screens/Tetris/Tetris.dart';
import 'package:awesome_ui/screens/Workout%20App/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/Gradiant/gradiant_screen.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Chooser(),
    );
  }
}

class Chooser extends StatelessWidget {
  const Chooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WorkOutScreen()));
                    },
                    child: Text("Workout app")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text("Signup")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HenziApp()));
                    },
                    child: Text("Henzi App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomAnimationNav()));
                    },
                    child: Text("Bottom Nav Animation")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SmartHome()));
                    },
                    child: Text("Smart Home")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BankingApp()));
                    },
                    child: Text("Banking App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeRentalApp()));
                    },
                    child: Text("Rental App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(title: 'Flutter Demo Home Page')));
                    },
                    child: Text("MyHomePage")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SopitasScreen()));
                    },
                    child: Text("Sopitas")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SopitasScreen2()));
                    },
                    child: Text("Sopitas V2")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BankCard()));
                    },
                    child: Text("Bank Cards")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DrawingBoard()));
                    },
                    child: Text("Drawing App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => JobsApp()));
                    },
                    child: Text("Jobs App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlayStationControllerScreen()));
                    },
                    child: Text("PS Controller")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ClockScreen()));
                    },
                    child: Text("Clock Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text("Day And Night")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FlappyBird()));
                    },
                    child: Text("Flappy Bird")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tetris()));
                    },
                    child: Text("Tetris")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScraperScreen()));
                    },
                    child: Text("Scraper")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PosterScreen()));
                    },
                    child: Text("Poster")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SocketScreen()));
                    },
                    child: Text("Socket")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BoardingPassScree()));
                    },
                    child: Text("Boarding Pass")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DonouStoreScreen()));
                    },
                    child: Text("Donout Store")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RemoteTvControl()));
                    },
                    child: const Text("Tv Control")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NftScrollHome()));
                    },
                    child: const Text("Nft Scroll")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OnBoardingScreen()));
                    },
                    child: const Text("Nft Marketplace")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FoodDeliveryScreen()));
                    },
                    child: const Text("Food Delivery")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BuildingScreen()));
                    },
                    child: const Text("Building")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MiniPortafolio()));
                    },
                    child: const Text("Mini Portafolio")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AnimatedBackground()));
                    },
                    child: const Text("Animated Background")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PodcastPlayerScreen()));
                    },
                    child: const Text("Podcast Player")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CryptoEventScreen()));
                    },
                    child: const Text("Crypto Event")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const GradiantScreen()));
                    },
                    child: const Text("Gradient screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CheckoutScreen()));
                    },
                    child: const Text("Checkout screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CryptoWallet()));
                    },
                    child: const Text("Crypto Wallet")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
