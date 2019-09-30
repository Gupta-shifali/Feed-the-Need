import 'package:feed_the_need/food_description.dart';
import 'package:feed_the_need/locate_fridge.dart';
import 'package:feed_the_need/main.dart';
import 'package:feed_the_need/volunteer_profile.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Feed The Need",
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/locateFridge": (context) => LocateFridgePage(),
        "/foodDesc": (context) => FoodDescPage(),
        "/volunteerProfile": (context) => VolunteerProfilePage(),
      },
    );
  }
}
