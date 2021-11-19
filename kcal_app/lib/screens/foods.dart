// ignore_for_file: unused_import
//@dart = 2.9
import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/display-food.dart';

class Foods extends StatefulWidget {
  const Foods({Key key,}) : super(key: key);

  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Food('cookie', 'Cookie', 0),
                  SizedBox(width: 7),
                  Food('burger', 'Burger', 1),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Food('cake', 'Cakes', 2),
                  SizedBox(width: 7),
                  Food('pizza', 'Pizza', 3),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Food('hotdog', 'Hotdog', 4),
                  SizedBox(width: 7),
                  Food('fries', 'Fries', 5),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Food('donut', 'Donuts', 6),
                  SizedBox(width: 182,)
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextButton Food(String image, String name, int index) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayFood(index: index,)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/' + image + '.png',
            height: 35,
          ),
          SizedBox(width: 10),
          Text(name,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PublicSans',
                  letterSpacing: 1)),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.brown[300],
            size: 20,
          )
        ],
      ),
      style: TextButton.styleFrom(
          fixedSize: Size(175, 80),
          backgroundColor: Beige,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
