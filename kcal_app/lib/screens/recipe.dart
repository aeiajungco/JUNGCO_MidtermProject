//@dart = 2.9

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/recipe-details.dart';

class Recipe extends StatefulWidget {
  const Recipe({Key key}) : super(key: key);
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  List<Map<String, String>> list = [
    {
      'image': 'lib/assets/images/cookie1.jfif',
      'time': '40 min',
      'servings': '18 serve',
      'name': 'Chewy Chocolate Chip Cookies',
      'desc': 'Sweet and chewy cookies with chocolate chips',
    },
    {
      'image': 'lib/assets/images/cheeseburger.jpg',
      'time': '15 min',
      'servings': '1 serve',
      'name': 'Double Cheeseburger',
      'desc': 'Slice of cheese placed on top of the meat patty.',
    },
    {
      'image': 'lib/assets/images/redvelvet.jpg',
      'time': '2h 30min',
      'servings': '10 serve',
      'name': 'Red Velvet Cake',
      'desc': 'Cake with a vanilla flavor with a hint of chocolate.',
    },
    {
      'image': 'lib/assets/images/pijja.png',
      'time': '1h 45min',
      'servings': '10 serve',
      'name': 'Hawaiian Pizza',
      'desc': 'With melted mozzarella cheese topped with pineapple.',
    },
    {
      'image': 'lib/assets/images/hotdog1.jpg',
      'time': '10 min',
      'servings': '2 serve',
      'name': 'Baked Hotdog Sandwich',
      'desc': 'Hotdog on buns with a squeeze of ketchup and mustard.',
    },
    {
      'image': 'lib/assets/images/fries.jpg',
      'time': '25 min',
      'servings': '8 serve',
      'name': 'Crispy Seasoned Fries',
      'desc': 'Homemade hot crispy fried potatoes perfect for snacks.',
    },
    {
      'image': 'lib/assets/images/donut2.jpg',
      'time': '2hr 16min',
      'servings': '16 serve',
      'name': 'Yeast-Raised Doughnuts',
      'desc': 'Fill with pastry cream and top with a quick chocolate glaze.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) => RecipeList(
          image: list[index]['image'],
          time: list[index]['time'],
          servings: list[index]['servings'],
          name: list[index]['name'],
          desc: list[index]['desc'],
          idx: index,
        ),
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  const RecipeList({
    Key key,
    this.image,
    this.time,
    this.servings,
    this.name,
    this.desc,
    this.idx,
  }) : super(key: key);

  final image, time, servings, name, desc, idx;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecipeDetails(
                        image: image,
                        time: time,
                        servings: servings,
                        name: name,
                        desc: desc,
                        index: idx,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          margin: EdgeInsets.symmetric(horizontal: 28),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              color: Beige,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Column(
                    children: [
                      Image.asset(
                        image,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.schedule,
                                      color: TextColor,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      time,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: TextColor,
                                      ),
                                    ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.group,
                                  color: TextColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  servings,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: TextColor,
                                  ),
                                ),
                                  ],
                                ),
                                Row(children: [
                                  for (int i = 1; i <= 5; i++)
                                    Icon(
                                      Icons.star,
                                      color: Coral,
                                      size: 15,
                                    ),
                                ])
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.grey[850],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  desc,
                                  style: TextStyle(
                                      color: TextColor,
                                      fontSize: 17,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
