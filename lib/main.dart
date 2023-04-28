import 'package:awesome_ui/screens/A24/a24_screen.dart';
import 'package:awesome_ui/screens/AnimatedBackground/animated_background_screen.dart';
import 'package:awesome_ui/screens/BackPrompt/MyHomePage.dart';
import 'package:awesome_ui/screens/Bank%20Cards/bank_app.dart';
import 'package:awesome_ui/screens/Banking%20App/banking_app_screen.dart';
import 'package:awesome_ui/screens/BoardingPass/boarding_pass_screen.dart';
import 'package:awesome_ui/screens/Bottom%20Nav/bottom_nav_screen.dart';
import 'package:awesome_ui/screens/Brutalism/brutalism_screen.dart';
import 'package:awesome_ui/screens/Building/building_screen.dart';
import 'package:awesome_ui/screens/Chat/chat_screen.dart';
import 'package:awesome_ui/screens/Checkout/checkout_screen.dart';
import 'package:awesome_ui/screens/Clock/main.dart';
import 'package:awesome_ui/screens/CryptoWallet/crypto_wallet_screen.dart';
import 'package:awesome_ui/screens/DayAndNight/screens/login/login_screen.dart';
import 'package:awesome_ui/screens/DeliveryFood/food_delivery_screen.dart';
import 'package:awesome_ui/screens/DonoutStore/donout_store_screen.dart';
import 'package:awesome_ui/screens/FlappyBird/homepage.dart';
import 'package:awesome_ui/screens/Form/form_screen.dart';
import 'package:awesome_ui/screens/Hedon/splash_screen.dart';
import 'package:awesome_ui/screens/Hezi%20App/henzi_app_screen.dart';
import 'package:awesome_ui/screens/Home%20Rental%20App/home_rental_app_screen.dart';
import 'package:awesome_ui/screens/JobFinder/job_finder_screen.dart';
import 'package:awesome_ui/screens/JobsApp/jobs_app_screen.dart';
import 'package:awesome_ui/screens/LinkTree/link_tree_screen.dart';
import 'package:awesome_ui/screens/Mini%20Portafolio/mini_portafolio_screen.dart';
import 'package:awesome_ui/screens/MoviePosters/movie_posters.dart';
import 'package:awesome_ui/screens/Movies/movies_screen.dart';
import 'package:awesome_ui/screens/NftMarketPlace/screens/onboarding_screen.dart';
import 'package:awesome_ui/screens/NftScroll/nft_scroll_home.dart';
import 'package:awesome_ui/screens/Notes/posts_screen.dart';
import 'package:awesome_ui/screens/Pdf/pages/invoices.dart';
import 'package:awesome_ui/screens/Playstationcontroller/play_station_controller.dart';
import 'package:awesome_ui/screens/PodcastApp/podcast_player_screen.dart';
import 'package:awesome_ui/screens/Poster/poster_screen.dart';
import 'package:awesome_ui/screens/ProductInventory/product_inventory_screen.dart';
import 'package:awesome_ui/screens/RemoteTvControl/remote_tv_control_screen.dart';
import 'package:awesome_ui/screens/ResumeBuilder/resume_builder_screen.dart';
import 'package:awesome_ui/screens/Scaper/scraper_screen.dart';
import 'package:awesome_ui/screens/SmartControl/smart_home_control.dart';
import 'package:awesome_ui/screens/Socket/socket_screen.dart';
import 'package:awesome_ui/screens/Sopitas/sopitas_screen.dart';
import 'package:awesome_ui/screens/SopitasV2/sopitas_screenV2.dart';
import 'package:awesome_ui/screens/StorageApp/storage_screen.dart';
import 'package:awesome_ui/screens/TaskApp/task_screen.dart';
import 'package:awesome_ui/screens/Tetris/Tetris.dart';
import 'package:awesome_ui/screens/Ticket/ticket_screen.dart';
import 'package:awesome_ui/screens/WeatherApp/weather_app_screen.dart';
import 'package:awesome_ui/screens/Workout%20App/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/BarcodeScanner/barcode_scanner.dart';
import 'screens/Gradiant/gradiant_screen.dart';
import 'screens/PaymentTracker/payment_tracker_screen.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
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
                    child: const Text("Workout app")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HenziApp()));
                    },
                    child: const Text("Henzi App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomAnimationNav()));
                    },
                    child: const Text("Bottom Nav Animation")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BankingApp()));
                    },
                    child: const Text("Banking App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeRentalApp()));
                    },
                    child: const Text("Rental App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(title: 'Flutter Demo Home Page')));
                    },
                    child: const Text("MyHomePage")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SopitasScreen()));
                    },
                    child: const Text("Sopitas")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SopitasScreen2()));
                    },
                    child: const Text("Sopitas V2")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BankCard()));
                    },
                    child: const Text("Bank Cards")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const JobsApp()));
                    },
                    child: const Text("Jobs App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              const PlayStationControllerScreen()));
                    },
                    child: const Text("PS Controller")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ClockScreen()));
                    },
                    child: const Text("Clock Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: const Text("Day And Night")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FlappyBird()));
                    },
                    child: const Text("Flappy Bird")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tetris()));
                    },
                    child: const Text("Tetris")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScraperScreen()));
                    },
                    child: const Text("Scraper")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PosterScreen()));
                    },
                    child: const Text("Poster")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SocketScreen()));
                    },
                    child: const Text("Socket")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BoardingPassScree()));
                    },
                    child: const Text("Boarding Pass")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DonouStoreScreen()));
                    },
                    child: const Text("Donout Store")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RemoteTvControl()));
                    },
                    child: const Text("Tv Control")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NftScrollHome()));
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
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BrutalismScreen()));
                    },
                    child: const Text("Brutalism")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const JobFinder()));
                    },
                    child: const Text("Job Finder")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const A24()));
                    },
                    child: const Text("A24")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TicketUiScreen()));
                    },
                    child: const Text("Ticket")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FormScreen()));
                    },
                    child: const Text("Form Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TaskScreen()));
                    },
                    child: const Text("Task Screen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const StorageScreen()));
                    },
                    child: const Text("Storage App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SmartHomeControl()));
                    },
                    child: const Text("Smart Home Control")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PostsScreen()));
                    },
                    child: const Text("Notes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MoviesScreen()));
                    },
                    child: const Text("Movies")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LinkTree()));
                    },
                    child: const Text("Link Tree")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => InvoicePage()));
                    },
                    child: const Text("Pdf")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ResumeBuilderScreen()));
                    },
                    child: const Text("Resume Builder")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                    },
                    child: const Text("Chat App")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BarcodeScanner()));
                    },
                    child: const Text("Barcode Scanner")),
               ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MoviesPosters()));
                    },
                    child: const Text("Movie posters")),   
              ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductInventory()));
                    },
                    child: const Text("Inventory")),   
              ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WeaterAppScreen()));
                    },
                    child: const Text("Weather App")),   
               ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PaymentTrackerScreen()));
                    },
                    child: const Text("Payment App")),       
              ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SplashScreen()));
                    },
                    child: const Text("Hedon")),                     
              ],
            ),
          ),
        ),
      ),
    );
  }
}
