//@dart = 2.4

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/favorites.dart';
import 'package:kcal_app/screens/foods.dart';
import 'package:kcal_app/screens/onboard.dart';
import 'package:kcal_app/screens/recipe-details.dart';
import 'package:kcal_app/screens/recipe.dart';
import 'package:kcal_app/screens/splashscreen.dart';
import 'package:kcal_app/screens/display-food.dart';
import 'package:kcal_app/screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KCAL',
      theme: ThemeData(
        fontFamily: 'PublicSans',
      ),
      home: SplashScreen(),
      
    );
  }
}

