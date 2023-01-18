import 'package:flutter/material.dart';
import 'package:beginner_stage/weatherApp/model/postcClass.dart';
import 'package:beginner_stage/weatherApp/model/widget.dart';

class WeatherApp extends StatefulWidget {
  WeatherAppState createState() => WeatherAppState();
}
class WeatherAppState extends State<WeatherApp> {
  late Future<post> data;
  dynamic city = "lagos";

  @override
  void initState() {
    super.initState();
    data = new Network().getData(city);
    //data.then((value) => print(value.city!.country));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        title: Text("FORECAST"),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: data,
          builder: (BuildContext, AsyncSnapshot<post> snapshot) {
            if (snapshot.hasData) {
              return ListView(scrollDirection: Axis.vertical, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textField(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "${snapshot.data?.city?.name},${snapshot.data?.city?.country}",
                        style: Design(),
                      ),
                    ),
                    Two(snapshot),
                  ],
                )
              ]);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  TextStyle Design() {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    );
  }

  Widget textField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        showCursor: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Text("Enter city/country name"),
            prefixIcon: Icon(Icons.search),
            labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        onSubmitted: (value) {
          setState(() {
            city = value.toString();
            data = Network().getData(city);
          });
        },
      ),
    );
  }
}
