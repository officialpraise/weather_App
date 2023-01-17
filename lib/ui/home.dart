//A PROJECT ON QUIZ APP BUT HAVE FUNCTIONALITY PROBLEM
// import 'package:flutter/Material.dart';
//
// import 'model.dart';
//
// class QuizApp extends StatefulWidget {
//   QuizAppstate createState() => QuizAppstate();
// }
//
// class QuizAppstate extends State<QuizApp> {
//   int no = 0;
//   List<QuizModel> quiz = [
//     QuizModel("What weird food combinations do you really enjoy", true),
//     QuizModel("What social stigma does society need to get over?", false),
//     QuizModel(
//         "What food have you never eaten but would really like to try?", false),
//     QuizModel("What’s something you really resent paying for?", true),
//     QuizModel("What would a world populated by clones of you be like?", false),
//     QuizModel("Do you think that aliens exist?", true),
//     QuizModel(
//         "What movie can you watch over and over without ever getting tired of?",
//         false),
//     QuizModel("Where are some unusual places you’ve been?", true),
//     QuizModel("What social stigma does society need to get over?", false),
//     QuizModel("What social stigma does society need to get over?", true),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text("QuizApp"),
//           centerTitle: true,
//         ),
//         body: Container(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 200,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 border: Border.all(
//                   width: 1,
//                 ),
//                 borderRadius: BorderRadius.circular(10)),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                 child: Text(
//                   "${quiz[no].Question}",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     if (quiz[no].Answer == true) {
//                       final snackBar = SnackBar(
//                         content: Text('correct'),
//                         backgroundColor: Colors.blue.shade900,
//                       );
//
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     }  if (quiz[no].Answer == false) {
//                       final snackBar = SnackBar(
//                         content: Text('wrong'),
//                         backgroundColor: Colors.red.shade900,
//                       );
//
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     }
//                   },
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                     color: Colors.blue,
//                     child: Center(
//                       child: Text(
//                         "True",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     if (quiz[no].Answer == false) {
//                       final snackBar = SnackBar(
//                         content: Text('wrong'),
//                         backgroundColor: Colors.red.shade900,
//                       );
//
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     }  if (quiz[no].Answer == true)   {
//                       final snackBar = SnackBar(
//                         content: Text('correct'),
//                         backgroundColor: Colors.blue.shade900,
//                       );
//
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     }
//                   },
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                     color: Colors.blue,
//                     child: Center(
//                       child: Text(
//                         "False",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: next,
//                   child: Container(
//                     width: 60,
//                     height: 20,
//                     color: Colors.blue,
//                     child: Center(
//                       child: Text(
//                         "Next",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ])));
//   }
//
//   void next() {
//     setState(() {
//       no++ % quiz.length;
//       print("pressed");
//     });
//   }
//SNACKBAR REFUSING TO RESPOND ALTERNATIVE 2
// //   Marks(bool userchoice) {
// //     if (userchoice==quiz[no].Answer) {
// //       final snackBar = SnackBar(
// //         content: Text('correct'),
// //         backgroundColor: Colors.green.shade900,
// //       );
// //
// //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //
// //
// // //      ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //     } else {
// //       final snackBar = SnackBar(
// //         content: Text('wrong'),
// //         backgroundColor: Colors.red.shade900,
// //       );
// //
// //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //
// //
//
// // //      ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //     }
// //}
// }

//A MOVIE APP PROJECT
// import 'package:flutter/material.dart';
//
// class MovieApp extends StatefulWidget {
//   MovieAppState createState() => MovieAppState();
// }
//
// class MovieAppState extends State<MovieApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("MOVIE"),
//         ),
//         body: ListView.builder(
//           itemCount: 10,
//             itemBuilder: (context, index) => Card(
//                   elevation: 23,
//                   child: ListTile(
//                       onTap: () {
//                         Navigator.push(
//                             context, MaterialPageRoute(builder:(context) => SecondClass(),));
//                       },
//                       leading: CircleAvatar(
//                         child: Text("H"),
//                       ),
//                       trailing: Text("..."),
//                       title: Text("Movie"),
//                       subtitle: Text("movie name")),
//                 )));
//   }
// }
//
// class SecondClass extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("page 2"),
//       ),
//       body: Container(
//         child: ElevatedButton(
//           child: Text("Next"),
//           onPressed: () {
//     Navigator.pop(
//     context, MaterialPageRoute(builder:(context) => MovieApp(),));
//     },
//
//         ),
//       ),
//     );
//   }
// }

//A TIP CALCULATOR APP
// import 'package:flutter/material.dart';
//
// class Calculator extends StatefulWidget {
//   CalculatorState createState() => CalculatorState();
// }
//
// class CalculatorState extends State<Calculator> {
//   double fieldamount = 0;
//   double totalamount = 0;
//   double slider = 0;
//   int splitperson = 1;
//   double tip=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("TIP CALCULATOR"),
//           centerTitle: true,
//         ),
//         body: Container(
//             child: ListView(scrollDirection: Axis.vertical, children: [
//           Column(
//             children: [
//               Container(
//                   height: 150,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       border:
//                           Border.all(width: 1, color: Colors.blueGrey.shade900),
//                       borderRadius: BorderRadius.circular(10)),
//                   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("TOTAL PER PERSON"),
//                         Text("\$${calculatetoalperperson(fieldamount, slider)}"),
//                       ])),
//               SizedBox(height: 30),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                     border:
//                         Border.all(width: 1, color: Colors.blueGrey.shade900),
//                     borderRadius: BorderRadius.circular(10)),
//                 width: 500,
//                 height: 250,
//                 child: Column(
//                   children: [
//                     TextField(
//                       keyboardType:
//                           TextInputType.numberWithOptions(decimal: true),
//                       style: TextStyle(),
//                       decoration: InputDecoration(
//                         labelText: "billing amount",
//                         prefixIcon: Icon(Icons.attach_money),
//                       ),
//                       onChanged: (String value) {
//                         try {
//                           fieldamount = double.parse(value);
//                         } catch (e) {
//                           fieldamount = 0.0;
//                         }
//                       },
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5, right: 5),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("SPLIT"),
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             width: 1, color: Colors.black38),
//                                         borderRadius: BorderRadius.circular(5)),
//                                     width: 30,
//                                     height: 30,
//                                     child: Center(
//                                       child: InkWell(
//                                           child: Text(
//                                             "+",
//                                             style: TextStyle(
//                                                 fontSize: 20,
//                                                 color: Colors.black),
//                                           ),
//                                           onTap: add),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   Center(
//                                       child: Text(
//                                     "$splitperson",
//                                   )),
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   Container(
//                                       decoration: BoxDecoration(
//                                           border: Border.all(
//                                               width: 1, color: Colors.black38),
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       width: 30,
//                                       height: 30,
//                                       child: Center(
//                                         child: InkWell(
//                                             child: Text(
//                                               "-",
//                                               style: TextStyle(
//                                                   fontSize: 20,
//                                                   color: Colors.black),
//                                             ),
//                                             onTap: sub),
//                                       )),
//                                 ]),
//                           ]),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5, right: 5),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("TIP"),
//                           Text("\$${calculatetip(fieldamount, slider)}"),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Center(child: Text("$slider\%")),
//                     SizedBox(height: 10),
//                     Slider(
//                         inactiveColor: Colors.grey.shade900,
//                         activeColor: Colors.red.shade900,
//                         divisions: 10,
//                         min: 0,
//                         max: 100,
//                         label: "Slide",
//                         value: slider.toDouble(),
//                         onChanged: (double index) {
//                           setState(() {
//                             slider = index;
//                           });
//                         })
//                   ],
//                 ),
//               )
//             ],
//           )
//         ])));
//   }
//
//   void add() {
//     setState(() {
//       splitperson++;
//     });
//   }
//
//   void sub() {
//     setState(() {
//       splitperson--;
//     });
//   }
// calculatetip(double billamount,double slide){
//     double totaltip=(billamount*slide)/100;
//     return totaltip;
//
// }
//   calculatetoalperperson(double billamount,double slide){
//     double percentage=calculatetip(billamount, slide);
//     double totalamount=billamount+percentage;
//     return totalamount;
//
//   }
// }

//A PROJECT FOR A QUOTABLE QUOTE APP
// class Home extends StatefulWidget {
//   HomeState createState() => HomeState();
// }
//
// class HomeState extends State<Home> {
//   int num = 0;
//   List<String> qoutes = [
//     "Ignorance of Scripture is ignorance of Christ.",
//     "Since Christ Himself has said, \"This is My Body\" who shall dare to doubt that It is His Body?",
//     "Teach us to give and not count the cost.",
//     "Pray as though everything depended on God. Work as though everything depended on you.",
//     "Don\'t you long to shout to those youths who are bustling around you\: Fools\! Leave those worldly things that shackle the heart - and very often degrade it - leave all that and come with us in search of Love!",
//     "For me prayer is a surge of the heart, it is a simple look towards Heaven, it is a cry of recognition and of love, embracing both trial and joy.",
//     "To convert somebody go and take them by the hand and guide them.",
//     "On the question of relating to our fellowman – our neighbor’s spiritual need transcends every commandment. Everything else we do is a means to an end. But love is an end already, since God is love.",
//     "If you are what you should be, you will set the whole world ablaze!",
//     "Lord, make me an instrument of your peace; where there is hatred, let me sow love; where there is injury, pardon; where there is doubt, faith; where there is despair, hope; where there is darkness, light; and where there is sadness, joy.",
//     "Our hearts were made for You, O Lord, and they are restless until they rest in you.",
//     "Charity is certainly greater than any rule. Moreover, all rules must lead to charity.",
//     "Late have I loved you, O Beauty ever ancient, ever new, late have I loved you!",
//     "O Master, make me chaste, but not yet!",
//     "’Eat my flesh,’ [Jesus] says, ‘and drink my blood.’ The Lord supplies us with these intimate nutrients, he delivers over his flesh and pours out his blood, and nothing is lacking for the growth of his children",
//     "Priests have received a power which God has given neither to angels nor to archangels. It was said to them: ‘Whatsoever you shall bind on earth shall be bound in heaven; and whatsoever you shall loose, shall be loosed.’ Temporal rulers have indeed the power of binding; but they can only bind the body. Priests, in contrast, can bind with a bond which pertains to the soul itself and transcends the very heavens. Did [God] not give them all the powers of heaven?...What greater power is there than this? The Father has given all judgment to the Son. And now I see the Son placing all this power in the hands of men. They are raised to this dignity as if they were already gathered up to heaven",
//     "The nation doesn’t simply need what we have. It needs what we are.",
//     "We are to love God for Himself, because of a twofold reason; nothing is more reasonable, nothing more profitable.",
//     "We always find that those who walked closest to Christ were those who had to bear the greatest trials.",
//     "Wherever the bishop shall appear, there let the multitude also be; even as, wherever Jesus Christ is, there is the Catholic Church.",
//     "If this is the way You treat Your friends, no wonder You have so few!",
//     "Give something, however small, to the one in need. For it is not small to one who has nothing. Neither is it small to God, if we have given what we could.",
//     "Christ be with me, Christ within me, Christ behind me, Christ before me, Christ beside me, Christ to win me, Christ to comfort me and restore me, Christ beneath me, Christ above me, Christ in quiet, Christ in danger, Christ in hearts of all that love me, Christ in mouth of friend and stranger.",
//     "Christ said, “I am the Truth”; he did not say “I am the custom.",
//     "All the efforts of the human mind cannot exhaust the essence of a single fly.",
//     "There are more tears shed over answered prayers than over unanswered prayers.",
//     "I have no taste for corruptible food nor for the pleasures of this life. I desire the bread of God, which is the flesh of Jesus Christ, who was of the seed of David; and for drink I desire his blood, which is love incorruptible",
//     "You cannot be half a saint; you must be a whole saint or no saint at all.",
//     "You must ask God to give you power to fight against the sin of pride which is your greatest enemy – the root of all that is evil, and the failure of all that is good. For God resists the proud.",
//     "Let us go forward in peace, our eyes upon heaven, the only one goal of our labors."
//   ];
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red.shade900,
//         title: Text("QUOTE APP"),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () => print('presses 1'), icon: Icon(Icons.menu)),
//         ],
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border.all(
//                       width: 2,
//                       color: Colors.black26,
//                       style: BorderStyle.solid)),
//               width: 600,
//               height: 200,
//               margin: EdgeInsets.all(10),
//               child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: Text(
//                 qoutes[num % 30],
//                 style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.deepOrange.shade300,
//                       fontWeight: FontWeight.bold),
//               ),
//                   )),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton.icon(
//               icon: Icon(Icons.wb_sunny),
//               label: Text("INSPIRE ME"),
//               onPressed: counter,
//             ),
//             Spacer()
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           onTap: (int index) => print("$index"),
//           items: [
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 ),
//                 label: "Search",
//                 tooltip: "make enquires"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.phone, color: Colors.white),
//                 label: "Call",
//                 tooltip: "make calls"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.alarm, color: Colors.white),
//                 label: "wake",
//                 tooltip: "alarm system"),
//           ],
//           backgroundColor: Colors.red.shade900),
//     );
//   }
//
//   void counter() {
//     setState(() {
//       num += 1;
//     });
//   }
// }

// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Center(
// child: InkWell(
// child: Text(
// "START",
// style:
// TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
// ),
// onDoubleTap: () => print("inkwell touched"),
// ),
// ),
