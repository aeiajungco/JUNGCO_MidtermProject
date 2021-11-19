//@dart = 2.4

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';

import 'onboard.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  
    _navigatetohome()async{
      await Future.delayed(Duration(seconds: 5), () {});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Intro()));
    }

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container (
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/foodbg.png'),
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
            color: Colors.white.withOpacity(.7)
          ),
    
        child: Scaffold (
          backgroundColor: Colors.green[300].withOpacity(.9),
          
          body: Center(
            child: SizedBox (
              child: Column(
                children: [
                  SizedBox(height: 380,),
                  Text (
                    'kcal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Gotham',
                    ),
                  ),
                  SizedBox(height: 300,),
                  Text (
                    'ZUAMICA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 255, .5),
                      fontSize: 20,
                      fontFamily: 'Gotham'
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

