import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({ Key? key }) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold (
        body: Center(
          child: Column(
              children: [
              SizedBox(height: 20),
              Text (
                'kcal',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 20,
                  color: Color.fromRGBO(140, 222, 113, 1),
                ),
              ),

              Expanded(
                child: PageView(
                  children: [
                    Container(child: Text('Page 1')),
                    Container(child: Text('Page 2')),
                    Container(child: Text('Page 3')),
                  ],
                )
              ),

              SizedBox(height: 40),

              TextButton(onPressed: () {} , 
                child: 
                  Text (
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PublicSans', 
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 160, 138, 1),
                    fixedSize: Size (300, 70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text('Log In',
                      style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(140, 222, 113, 1),
                      fontFamily: 'PublicSans',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ],
              ),
              
            ],),
        ),
        
      ),
      
    );
  }
}