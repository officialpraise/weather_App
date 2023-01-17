import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  PracticeState createState() => PracticeState();
}

class PracticeState extends State<Practice> {
  int stepper_no = 2;
  bool chip = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: Icon(Icons.search),
          )
        ],
        title: Text("FLUTTER WIDGETS"),
        centerTitle: true,
      ),
      body: PageView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stepper(
                  steps: [
                    Step(
                        title: Text("Step 1"),
                        content: Text("press 1 to show balance")),
                    Step(
                        title: Text("Step 2"),
                        content: Text("press 2 to show Account")),
                    Step(
                        title: Text("Step 3"),
                        content: Text("press 3 to show Account details")),
                    Step(
                        title: Text("Step 4"),
                        content: Text("press 4 to show current balance")),
                    Step(
                        title: Text("Step 5"),
                        content: Text("press 5 to show bank name")),
                  ],
                  onStepTapped: (int Value) {
                    setState(() {
                      stepper_no = Value;
                    });
                  },
                  onStepContinue: () {
                    if (stepper_no != 5) {
                      stepper_no += 1;
                    } else {
                      stepper_no = 0;
                    }
                  },
                  onStepCancel: () {
                    if (stepper_no != 0) {
                      stepper_no -= 1;
                    } else {
                      stepper_no = 5;
                    }
                  },
                ),
                ChoiceChip(
                  label: Text("click"),
                  selected: chip,
                  onSelected: (bool newchip) {
                    setState(() {
                      chip = newchip;
                    });
                  },
                  avatar: Icon(Icons.wordpress),selectedColor: Colors.blue,
                ),
              ],
            ),
          ),
       Container(child: Text("me"),),
          Container(child: Text("me"),),
          Container(child: Text("me"),)],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List matchQuery = [];
    // TODO: implement buildResults
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text("$result"),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text("$result"),
          );
        });
  }
}
