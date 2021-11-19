//@dart=2.4

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/favorites.dart';

class Intro extends StatefulWidget {
  const Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int current = 0;
  List<Map<String, String>> intro = [
    {
      'image': 'lib/assets/images/eat.png',
      'text1': 'Eat Healthy',
      'text2':
          'Maintaining good health should be the primary focus of everyone.',
    },
    {
      'image': 'lib/assets/images/cooking.png',
      'text1': 'Healthy Recipes',
      'text2': 'Browse thousands of healthy recipes from all over the world.',
    },
    {
      'image': 'lib/assets/images/track.png',
      'text1': 'Track Your Health',
      'text2': 'With amazing inbuilt tools you can track your progress.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text(
                  'kcal',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 40,
                    color: Green,
                  ),
                ),
                SizedBox(
                  height: 510,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        current = value;
                      });
                    },
                    itemCount: intro.length,
                    itemBuilder: (context, index) => IntroScreen(
                    image: intro[index]['image'],
                    text1: intro[index]['text1'],
                    text2: intro[index]['text2'],
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      intro.length, (index) => buildDot(index: index)),
                ),
                SizedBox(height: 40),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PublicSans',
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Coral,
                      fixedSize: Size(300, 80),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)))),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have An Account?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[800],
                        fontFamily: 'PublicSans',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Green,
                          fontFamily: 'PublicSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildDot({int index}) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        height: current == index ? 10 : 7,
        width: current == index ? 20 : 10,
        decoration: BoxDecoration(
            color: current == index ? Color.fromRGBO(255, 160, 138, 1) : Color.fromRGBO(255, 160, 138, .5),
            borderRadius: BorderRadius.all(Radius.elliptical(80,50))
        )
    );
  }
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    Key key,
    this.image,
    this.text1,
    this.text2,
  }) : super(key: key);
  final String text1, text2, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Image.asset(
          image,
          height: 300,
          width: 300,
        ),
        SizedBox(height: 20),
        Text(
          text1,
          style: TextStyle(
              fontFamily: 'PublicSans',
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15,),
        SizedBox(
          width: 330,
          child: Text(
            text2,
            style: TextStyle(
                fontFamily: 'PublicSans',
                fontSize: 24,
                height: 1.5,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
