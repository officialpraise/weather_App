import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigator();
     }

    navigator() async {
      await Future.delayed(Duration(seconds: 5),);
      //   // Navigator.pushReplacement(
      //   //     context, MaterialPageRoute(builder: (context) => WeatherApp()));
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.pink,
          body:
          Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Image(image: AssetImage("image.png")),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(1000),
                      ),
                      width:300,
                      height:300,
                    ),
                    SizedBox(height: 4,),
                    SpinKitSpinningLines(
                      color: Colors.white70,
                      size: 70,
                    ),

                  ],
                ),

          );
    }
  }
