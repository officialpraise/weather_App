import 'package:beginner_stage/weatherApp/model/postcClass.dart';
import 'package:beginner_stage/weatherApp/model/util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Two(AsyncSnapshot snapshot) {
  var Postlist = snapshot.data?.list;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        Util.getFormattedDate(
            DateTime.fromMillisecondsSinceEpoch((Postlist?[0].dt)! * 1000)),
        style: Design(),
      ),
      Padding(padding: EdgeInsets.all(4), child: Iconic(snapshot)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${Postlist?[0].temp!.day!.toStringAsFixed(0)}°F",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "${Postlist?[0].weather?[0].description!.toUpperCase()}",
            style: Design(),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${Postlist?[0].speed!.toStringAsFixed(2)}mi/h",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                Icon(
                  FontAwesomeIcons.wind,
                  size: 20,
                  color: Colors.brown,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${Postlist?[0].humidity!.toStringAsFixed(0)}%",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                Icon(
                  FontAwesomeIcons.solidFaceGrinBeamSweat,
                  size: 20,
                  color: Colors.brown,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${Postlist?[0].temp!.max!.toStringAsFixed(2)}°F",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.temperatureHigh,
                  size: 20,
                  color: Colors.brown,
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "7-Day WEATHER FORECAST",
          style: Design(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: BottomView(snapshot),
      ),
    ],
  );
}

//WeatherIcon code
Iconic(AsyncSnapshot snapshot) {
  String weatherIcon = "snapshot.data?.list![0].weather![0].main";
  switch (weatherIcon) {
    case "Rain":
      {
        return Icon(
          FontAwesomeIcons.cloudRain,
          size: 195,
          color: Colors.pinkAccent,
        );
      }

    case "Clouds":
      {
        return Icon(
          FontAwesomeIcons.cloud,
          size: 195,
          color: Colors.pinkAccent,
        );
      }
    case "Clear":
      {
        return Icon(
          FontAwesomeIcons.sun,
          size: 195,
          color: Colors.pinkAccent,
        );
      }

    case "Snow":
      {
        return Icon(
          FontAwesomeIcons.snowman,
          size: 195,
          color: Colors.pinkAccent,
        );
      }
    default:
      {
        return Icon(
          FontAwesomeIcons.cloud,
          size: 195,
          color: Colors.pinkAccent,
        );
      }
  }
}

//Text style code
TextStyle Design() {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}

//code for the buttom widget scroll list
Widget BottomView(AsyncSnapshot snapshot) {
  var weatherList = snapshot.data!.list;

  return Container(
    height: 200,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.deepPurpleAccent,
                  gradient: LinearGradient(
                    colors: [Colors.purpleAccent.shade100, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Util.getFormatted(
                        DateTime.fromMillisecondsSinceEpoch(
                          weatherList[index].dt! * 1000,
                        ),
                      ),
                      style: Design(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: IconicBottom(
                              "${weatherList[index].weather?[0].main}")),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${weatherList[index].temp!.min!.toStringAsFixed(0)}°F"),
                              Icon(
                                Icons.arrow_circle_down_outlined,
                                size: 20,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${weatherList[index].temp!.max!.toStringAsFixed(0)}°F"),
                              Icon(
                                Icons.arrow_circle_up_outlined,
                                size: 20,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("HUM:",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "${weatherList[index].humidity!.toStringAsFixed(0)}%"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Wind:",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  "${weatherList[index].speed!.toStringAsFixed(0)}mi/h"),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              width: 8,
            ),
        itemCount: weatherList!.length),
  );
}

//swichcase for bottom weather Icons
IconicBottom(String weatherIco) {
  String weatherIcon = weatherIco;
  switch (weatherIcon) {
    case "Rain":
      {
        return Icon(
          FontAwesomeIcons.cloudRain,
          size: 70,
          color: Colors.pinkAccent,
        );
      }

    case "Clouds":
      {
        return Icon(
          FontAwesomeIcons.cloud,
          size: 70,
          color: Colors.pinkAccent,
        );
      }
    case "Clear":
      {
        return Icon(
          FontAwesomeIcons.sun,
          size: 70,
          color: Colors.pinkAccent,
        );
      }

    case "Snow":
      {
        return Icon(
          FontAwesomeIcons.snowman,
          size: 70,
          color: Colors.pinkAccent,
        );
      }
    default:
      {
        return Icon(
          FontAwesomeIcons.cloud,
          size: 70,
          color: Colors.pinkAccent,
        );
      }
  }
}
