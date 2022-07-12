import 'package:awesome_ui/screens/DonoutStore/core/utils/theme/app_theme.dart';
import 'package:awesome_ui/screens/DonoutStore/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'core/utils/size_config.dart';

class DonouStoreScreen extends StatelessWidget {
  const DonouStoreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizeConfiguration(
      builder: (_) => MaterialApp(
        title: 'Foodie',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const SplashScreen(),
      ),
    );
  }
}
