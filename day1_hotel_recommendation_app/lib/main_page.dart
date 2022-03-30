import 'dart:math';

import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  List<String> restaurants = [
    'Press for Suggestion',
    'McDonald\'s',
    'FoodPanda',
    'Pizzeria',
    'KFC chicken lickin good',
    'Bitto Tikki Wala Netaji sunbash Palace',
    'Subway',
  ];

  int currentIndex = 0;

  @override
  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      //print(index);

      if (index != 0) currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('What do you want to eat?'),

          SizedBox(height: 10),
          // ignore: unnecessary_null_comparison
          //if (currentIndex != null)
          Text(
            restaurants[currentIndex],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          //Padding(padding: EdgeInsets.all(50)),
          SizedBox(
            height: 50,
          ),
          FlatButton(
              onPressed: () {
                updateIndex();
              },
              child: Text('Pick a Restaurant'),
              color: Colors.purple,
              textColor: Colors.white)
        ],
      ),
    ));
  }
}
