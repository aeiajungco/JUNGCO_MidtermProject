//@dart = 2.4

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/foods.dart';
import 'package:kcal_app/screens/recipe.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key key}) : super(key: key);
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  int select = 0, foodList = 1, recipeList = 1;
  List<bool> selected = [true, false];
  List<Map<String, String>> empty = [
    {
      'image': 'lib/assets/images/food.png',
      'text1': 'No Foods Found',
      'text2':
          "You don't save any food. Go ahead, search and save your favorite food."
    },
    {
      'image': 'lib/assets/images/recipes.png',
      'text1': 'No Recipes Found',
      'text2':
          "You don't save any recipe. Go ahead, search and save your favorite recipe."
    },
  ];
  List<Map<String, String>> foodlist = [
    {
      'image': 'cookie.png',
      'name': 'Cookie',
    },
    {
      'image': 'cake.png',
      'name': 'Cake',
    },
    {
      'image': 'hotdog.png',
      'name': 'Hotdog',
    },
    {
      'image': 'donut.png',
      'name': 'Donuts',
    },
    {
      'image': 'burger.png',
      'name': 'Burger',
    },
    {
      'image': 'pizza.png',
      'name': 'Pizza',
    },
    {
      'image': 'fries.png',
      'name': 'Fries',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Favorites',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        bottomNavigationBar:
            (select == 0 || recipeList == 0) ? NavBar(select: 3,) : null,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                height: 60,
                child: ToggleButtons(
                  fillColor: Green,
                  selectedColor: Colors.white,
                  color: Green,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  renderBorder: false,
                  isSelected: selected,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Foods',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Recipes',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  onPressed: (int newIndex) {
                    setState(() {
                      for (int i = 0; i < selected.length; i++) {
                        if (i == newIndex) {
                          selected[i] = true;
                          select = newIndex;
                        } else
                          selected[i] = false;
                      }
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              displayFave(),
            ],
          ),
        ),
      ),
    );
  }

  displayFave() {
    if (select == 0) {
      if (foodList == 0) {
        return EmptyFav(
          image: empty[select]['image'],
          text1: empty[select]['text1'],
          text2: empty[select]['text2'],
        );
      } else
        return Foods();
    } else {
      if (recipeList == 0) {
        return EmptyFav(
          image: empty[select]['image'],
          text1: empty[select]['text1'],
          text2: empty[select]['text2'],
        );
      } else {
        select = 1;
        return SizedBox(height: 660, child: Recipe());
      }
    }
  }
}

class EmptyFav extends StatelessWidget {
  const EmptyFav({
    Key key,
    this.image,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String image, text1, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            image,
            height: 110,
            width: 110,
          ),
          SizedBox(height: 20),
          Text(
            text1,
            style: TextStyle(
                fontFamily: 'PublicSans',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
                color: Colors.grey[800]),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 320,
            height: 180,
            child: Text(
              text2,
              style: TextStyle(
                  fontFamily: 'PublicSans',
                  fontSize: 20,
                  height: 1.5,
                  letterSpacing: .5,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Search',
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
        ],
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({
    Key key, this.select,
  }) : super(key: key);
  final select;
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [null, null, null, null, null];
  List<IconData> iconList = [Icons.home, Icons.search, Icons.photo_camera, Icons.favorite_rounded, Icons.person_outline];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          for (int i = 0; i < selected.length; i++) 
          NavButton(iconList[i], i)


        ],
      ),
    );
  }

  Container NavButton(IconData icon, int x) {
    return Container(
      height: 85,
      child: TextButton(
        onPressed: () {
          setState(() {
            for (int i = 0; i < selected.length; i++) {
              if (i == x) 
                selected[i] = true;
              else
              selected[i] = false;
            }
          });

          switch (x) {
            case 0:
              
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Camera()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Favorites()));
              break;
            case 4:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              break;
          }
        },
        child: Icon(
          icon,
          color: selected[x]== true ? Coral : (x == 2 ? Colors.white : Colors.grey[500]),
          size: 35,
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(1.5, 1.5),
          shape: CircleBorder(),
          backgroundColor: x == 2 ? Green : null,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Green,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Home',
              style: TextStyle(
                  color: Green, fontWeight: FontWeight.bold, fontSize: 20)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(select: 0),
        body: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Text('Welcome to Home!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                  textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Green,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Search',
              style: TextStyle(
                  color: Green, fontWeight: FontWeight.bold, fontSize: 20)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(select: 1,),
        body: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Text('Searching for something?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                  textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}

class Camera extends StatelessWidget {
  const Camera({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Green,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Camera',
              style: TextStyle(
                  color: Green, fontWeight: FontWeight.bold, fontSize: 20)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(select: 2,),
        body: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Text('1...2...3...\n*click*',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                  textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Green,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Profile',
              style: TextStyle(
                  color: Green, fontWeight: FontWeight.bold, fontSize: 20)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(select: 4,),
        body: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Text('Angelika Joy Jungco',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                  textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}
