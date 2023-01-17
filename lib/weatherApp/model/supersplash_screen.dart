import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'Splash screen.dart';
import 'home.dart';

class SplashsuperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
       SplashScreen(),
      nextScreen: WeatherApp(),
      animationDuration: Duration(seconds: 5),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: MediaQuery.of(context).size.height,
      backgroundColor:Colors.blue,
      pageTransitionType:PageTransitionType.rightToLeft,
    );
  }
}
