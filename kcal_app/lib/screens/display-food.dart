//@dart = 2.9
// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/favorites.dart';

class DisplayFood extends StatelessWidget {
  List<Map<String, String>> myFood = [
    {
      'image': 'lib/assets/images/cookie.png',
      'name': 'Cookie',
      'alt': 'Biscuit',
      'desc':
          "A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.\n\nIn most English-speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom. Some cookies may also be named by their shape, such as date squares of bars.",
      
    },
    {
      'image': 'lib/assets/images/burger.png',
      'name': 'Burger',
      'alt': 'Sandwich',
      'desc':
          "A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a \"special sauce\", often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns. A hamburger topped with cheese is called a cheeseburger.\n\nThe term burger can also be applied to the meat patty on its own, especially in the United Kingdom, where the term patty is rarely used, or the term can even refer simply to ground beef. Since the term hamburger usually implies beef, for clarity burger may be prefixed with the type of meat or meat substitute used, as in beef burger, turkey burger, bison burger, portobello burger, or veggie burger.\n\nHamburgers are typically sold at fast-food restaurants, diners, and specialty and high-end restaurants. There are many international and regional variations of hamburgers.",
    },
    {
      'image': 'lib/assets/images/cake.png',
      'name': 'Cakes',
      'alt': 'Dessert',
      'desc':
          "Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.\n\nThe most commonly used cake ingredients include flour, sugar, eggs, butter or oil or margarine, a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients and flavourings include dried, candied, or fresh fruit, nuts, cocoa, and extracts such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with fruit preserves, nuts or dessert sauces (like pastry cream), iced with buttercream or other icings, and decorated with marzipan, piped borders, or candied fruit.\n\nCake is often served as a celebratory dish on ceremonial occasions, such as weddings, anniversaries, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the whisking of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.",
    },
    {
      'image': 'lib/assets/images/pizza.png',
      'name': 'Pizza',
      'alt': 'Pie',
      'desc':
          "Pizza (Italian: [\'pittsa], Neapolitan: [\'pittsə]) is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.\n\nIn Italy, pizza served in formal settings, such as at a restaurant, is presented unsliced, and is eaten with the use of a knife and fork. In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
    },
    {
      'image': 'lib/assets/images/hotdog.png',
      'name': 'Hotdog',
      'alt': 'Sausage',
      'desc':
          "A hot dog (less commonly spelled hotdog) is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank). The names of these sausages also commonly refer to their assembled dish. Some consider it to be a sandwich. Hot dog preparation and condiments vary worldwide. Typical condiments include mustard, ketchup, mayonnaise, relish, and cheese sauce,[citation needed] and common garnishes include onions, sauerkraut, jalapeños, chili, grated cheese, coleslaw, bacon, and olives.[citation needed] Hot dog variants include the corn dog and pigs in a blanket. The hot dog's cultural traditions include the Nathan's Hot Dog Eating Contest and the Oscar Mayer Wienermobile.\n\nThese types of sausages were culturally imported from Germany and became popular in the United States. It became a working-class street food in the U.S., sold at stands and carts. The hot dog became closely associated with baseball and American culture. Although particularly connected with New York City and its cuisine, the hot dog eventually became ubiquitous throughout the US during the 20th century. Its preparation varies regionally in the country, emerging as an important part of other regional cuisines, including Chicago street cuisine.",
    },
    {
      'image': 'lib/assets/images/fries.png',
      'name': 'Fries',
      'alt': 'Chips',
      'desc':
          "French fries (North American English), chips (British English), finger chips (Indian English), French-fried potatoes, or simply fries are batonnet or allumette-cut deep-fried potatoes, originating from either Belgium or France. They are prepared by cutting the potato into even strips, then drying and frying it, usually in a deep fryer. Most french fries are produced from frozen Russet potatoes.\n\nFrench fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack, and they commonly appear on the menus of diners, fast food restaurants, pubs, and bars. They are often salted and may be served with ketchup, vinegar, mayonnaise, tomato sauce, or other local specialties. Fries can be topped more heavily, as in the dishes of poutine or chili cheese fries. Chips can be made from sweet potatoes instead of potatoes. A baked variant, oven chips, uses less oil or no oil.",
    },
    {
      'image': 'lib/assets/images/donut.png',
      'name': 'Donuts',
      'alt': 'Doughnut',
      'desc':
          "A doughnut or donut is a type of leavened fried dough.It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors. Doughnut is the traditional spelling, while donut is the simplified version; the terms are often used interchangeably.\n\nDoughnuts are usually deep fried from a flour dough, but other types of batters can also be used. Various toppings and flavorings are used for different types, such as sugar, chocolate or maple glazing. Doughnuts may also include water, leavening, eggs, milk, sugar, oil, shortening, and natural or artificial flavors.",
    },
  ];
  List<Map<String, String>> myGallery = [
    {
      'image1': 'lib/assets/images/cookie1.jpg',
      'image2': 'lib/assets/images/cookie2.jpg',
    },
    {
      'image1': 'lib/assets/images/burger1.jpg',
      'image2': 'lib/assets/images/burger2.jpg',
      'image3': 'lib/assets/images/burger3.png',
    },
    {
      'image1': 'lib/assets/images/cake1.jpg',
      'image2': 'lib/assets/images/cake2.jpg',
      'image3': 'lib/assets/images/cake3.jpg',
      'image4': 'lib/assets/images/cake4.jpg',
    },
    {
      'image1': 'lib/assets/images/pizza1.jpg',
      'image2': 'lib/assets/images/pizza2.jpg',
    },
    {
      'image1': 'lib/assets/images/hotdog1.jpg',
      'image2': 'lib/assets/images/hotdog2.jpg',
    },
    {
      'image1': 'lib/assets/images/fries1.jpg',
      'image2': 'lib/assets/images/fries2.jpg',
    },
    {
      'image1': 'lib/assets/images/donut1.jpg',
      'image2': 'lib/assets/images/donut2.jpg',
      'image3': 'lib/assets/images/donut3.jpg',
    }
  ];
  DisplayFood({Key key, this.index}) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon:
                  Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Text(
            'Foods',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Material(
            child: Stack(children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Beige,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Image.asset(myFood[index]['image'],
                                height: 60, width: 60),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  myFood[index]['name'],
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(139, 126, 106, 1),
                                  ),
                                ),
                                Text(
                                  'Alternative Names: ' + myFood[index]['alt'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown[800]
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      child: Text(
                    myFood[index]['desc'],
                    style:
                        TextStyle(fontSize: 18, height: 1.8, color: TextColor),
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Gallery',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      for (int i = 0; i < myGallery[index].length; i++) 
                        addGallery(index, i+1)
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 600),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Add to favorite',
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
            ),
          ),
        ])),
      ),
    );
  }

  addGallery(int index, int i) {
      return Row(
      children: [
        Image.asset(
          myGallery[index]['image'+i.toString()],
          height: 300,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
    }
  }

