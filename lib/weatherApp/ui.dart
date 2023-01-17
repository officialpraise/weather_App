//PRACTICE ON USING FUTURE
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// class WeatherApp extends StatefulWidget {
//   WeatherAppState createState() => WeatherAppState();
// }
//
// class WeatherAppState extends State<WeatherApp> {
//   late final Future data;
//
//   @override
//   void initState() {
//     data=getData();
//     data.then((value) => print(value));
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(""),
//         centerTitle: true,
//       ),
//       drawer: Drawer(
//         elevation: 10,
//         semanticLabel: "press",
//         backgroundColor: Colors.blue,
//         child: Text("alaye"),
//         width: MediaQuery
//             .of(context)
//             .size
//             .width / 1.5,
//       ),
//       body: Container(
//         child: Column(),
//       ),
//     );
//   }
//
//   Future getData() async {
//     final String uae="https://jsonplaceholder.typicode.com/posts";
//     Response response = await get(Uri.parse(uae));
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     }else{
//       print(response.statusCode);
//     }
//   }
// }
