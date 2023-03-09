import 'package:beginner_stage/weatherApp/model/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';



void main() {
 WidgetsBinding widget= WidgetsFlutterBinding.ensureInitialized();
 FlutterNativeSplash.preserve(widgetsBinding: widget);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MaterialApp(
    home:WeatherApp(),
    debugShowCheckedModeBanner: false,
  ));
  FlutterNativeSplash.remove();
}
