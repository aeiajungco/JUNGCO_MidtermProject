//@dart = 2.9
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:kcal_app/screens/constants.dart';
import 'package:kcal_app/screens/favorites.dart';
// import 'package:kcal_app/screens/recipe.dart';

// ignore: must_be_immutable
class RecipeDetails extends StatelessWidget {
  List<Map<String, String>> recipe = [
    {
      'desc':
          "These cookies are the pinnacle of perfection! If you want a big, fat, chewy cookie like the kind you see at bakeries and specialty shops, then these are the cookies for you!",
      'steps':
          "1. Preheat the oven to 325 degrees F (165 degrees C). Grease cookie sheets or line with parchment paper.\n\n2. Sift together the flour, baking soda and salt; set aside.\n\n3. In a medium bowl, cream together the melted butter, brown sugar and white sugar until well blended. Beat in the vanilla, egg, and egg yolk until light and creamy. Mix in the sifted ingredients until just blended. Stir in the chocolate chips by hand using a wooden spoon. Drop cookie dough 1/4 cup at a time onto the prepared cookie sheets. Cookies should be about 3 inches apart.\n\n4. Bake for 15 to 17 minutes in the preheated oven, or until the edges are lightly toasted. Cool on baking sheets for a few minutes before transferring to wire racks to cool completely.",
    },
    {
      'desc':
          "Forget waiting in the drive-thru lane! You can make a better burger at home with quality ingredients in no time.",
      'steps':
          "1. Preheat grill for direct-heat cooking. Gently form beef into 4 patties, each 4 1/2 inches in diameter and 1/2 inch thick (do not overwork meat or patties will be tough). Season generously with salt and pepper. Spread a thin layer of mayonnaise onto the cut sides of each bun.\n\n2. Place patties on grill and cook, uncovered, until browned and sizzling on the bottom, 3 to 4 minutes. Flip, top each with a slice of cheese, cover grill, and cook until cheese is melted and patties are medium-rare, 2 to 3 minutes more. Transfer to a plate. Place buns on grill cut-side down; cook just until lightly toasted and golden brown in places, about 1 minute.\n\n3. Dress the cut side of each bottom bun with ketchup and mayonnaise (or desired condiments), then top with patties. Place a tomato slice on top of each patty and season with salt. Stack with pickles and lettuce. Dress cut side of top buns with condiments, then sandwich toppings and serve.",
    },
    {
      'desc':
          "Red velvet is such a unique cake because it has a vanilla flavor but also a hint of chocolate. It can also be hard to get just right because it should be buttery, yet stay moist. This recipe delivers all of that and it’s incredibly delicious too!",
      'steps':
          "1. Combine water, Nestle All Purpose Cream and 1 ½ tbsp of vinegar.\n\n2. Whisk butter and white sugar until light and smooth. Gradually add the eggs, vanilla extract, food coloring, remaining 1 ½ tbsp vinegar and cream mixture.\n\n3. Sift the flour, cocoa powder, baking soda, baking powder and salt in a bowl. Mix in with the wet ingredients until just combined. Do not over mix.\n\n4. Greased a round cake pan and line with parchment paper. Pour the cake mixture. Bake in preheated 320ᵒF oven for 25- 30 minutes or until a skewer comes out clean when inserter in the middle of the cake. Set aside to cool completely.\n\n5. For the frosting, whisk the butter , cream cheese and Nestle All Purpose Cream. Gradually add powdered sugar while whisking until thick and smooth. Refrigerate for 30 minutes.\n\n6. Remove cake from the pan and peel off parchment paper. Slice in half crosswise.\n\n7. To assemble, spread frosting on one part of the cake and place the other part to sandwich the frosting. Spread frosting on all sides of the cake. Refrigerate for 1 hour before slicing and serving.",
    },
    {
      'desc':
          "Classic Hawaiian Pizza combines pizza sauce, cheese, cooked ham, and pineapple. This crowd-pleasing pizza recipe starts with my homemade pizza crust and is finished with a sprinkle of crispy bacon. It’s salty, sweet, cheesy, and undeniably delicious!",
      'steps':
          "1. Mix the dough ingredients together by hand or use a hand-held or stand mixer. Do this in steps as described in the written recipe below.\n\n2. Knead by hand or beat the dough with your mixer.\n\n3. Place dough into a greased mixing bowl, cover tightly, and set aside to rise for about 90 minutes or overnight in the refrigerator.\n\n4. Punch down risen dough to release air bubbles. Divide in 2.\n\n5.Roll dough out into a 12-inch circle. Cover and rest as you prep the pizza toppings.\n\n6. Top with favorite pizza toppings.\n\n7. Bake pizza at a very high temperature for only about 15 minutes.",
    },
    {
      'desc':
          "Variation on a hot dog. Kid approved. Experiment and use whatever combo of ingredients you wish.",
      'steps':
          "1. Preheat an oven to 325 degrees F (165 degrees C).\n\n2. Stir the hot dogs, Cheddar cheese, relish, ketchup, mustard, and onion together in a bowl; spoon into the hot dog buns. Wrap each sandwich in aluminum foil.\n\n3. Bake in the preheated oven until hot, about 20 minutes. Serve immediately.",
    },
    {
      'desc':
          "Frying the potatoes twice gives these french fries a crispiness not normally achieved in home cooked fries.",
      'steps':
          "1. Peel and rinse the potatoes. Then cut them into sticks by cutting the potato in 4 or 5 vertical pieces, and then cutting each piece into sticks.\n\n2. Place them in a large bowl and cover with cold water. Allow them to soak, 2 to 3 hours. (You can also stick them in the fridge and let them soak overnight.)\n\n3. When you're ready to make the fries, drain off the water and lay the potatoes on 2 baking sheets lined with paper towels. Blot with paper towels to dry them.\n\n4. Heat a few inches of oil in a heavy pot to 300 degrees F. In 3 or 4 batches, cook the potatoes until soft, 4 to 5 minutes per batch. They should not be brown at this point! You just want to start the cooking process. Remove each batch and drain on new/dry paper towels.\n\n5. Once all the potatoes have been fried at 300 degrees F, turn up the heat until the oil reaches 400 degrees F. When the oil's hot, start frying the potatoes in batches again, cooking until the fries are golden and crisp. Remove the potatoes from the oil and drain on paper towels.\n\n6. Sprinkle with sea salt and dive in!",
    },
    {
      'desc':
          "Light and airy, these doughnuts are ready to finish in any way you can imagine. Dredge the outside with cinnamon-sugar and fill with raspberry jam. Fill with pastry cream and top with a quick chocolate glaze for a Boston Cream Doughnut.",
      'steps':
          "1. To make the dough: In a large bowl or the bucket of your bread machine set on the dough cycle, whisk together the dry ingredients. In a small bowl, whisk together the egg, milk, melted butter, and vanilla. Add all at once to the dry ingredients. If you're using a bread machine, press Start. If you're preparing by hand or mixer, mix and knead to make a soft dough. Cover and let rest for 5 minutes.\n\n2. If preparing by hand or mixer, knead the dough after its rest for 6 to 8 minutes, until it's smooth and soft. Place the dough in a greased bowl, turn it over to coat the top, cover, and let it rise for 1 1/2 to 2 hours, until doubled in bulk.\n\n3. To shape the doughnuts: Deflate the dough and turn it out onto a lightly floured surface. Gently roll it 1/4\" thick, and cut out doughnuts with a 2 1/2\" to 3\" round cutter. Cover loosely with greased plastic wrap and let the doughnuts rise for 30 minutes to an hour, until doubled.\n\n4. To fry: Heat the oil or shortening in a heavy frying pan or skillet to 350°F. Carefully place the doughnuts in the oil, 2 or 3 at a time, and fry until golden brown. Turn over and cook the second side; each side should take no more than a minute. Remove from the oil with a slotted spoon and drain on absorbent paper. Fill or frost doughnuts as desired, using your choice of sugar topping or glaze.",
    }
  ];
  List<Map<String, String>> cookie = [
    {'image': 'butter.png', 'name': 'Butter', 'measurement': '1 cup'},
    {'image': 'sugar.png', 'name': 'Sugar', 'measurement': '1/2 cup'},
    {'image': 'eggs.png', 'name': 'Eggs', 'measurement': '2 pcs'},
    {'image': 'choco.png', 'name': 'Choco Chips', 'measurement': '2 cups'},
    {'image': 'bakingsoda.png', 'name': 'Baking Soda', 'measurement': '1 tsp'},
    {'image': 'flour.png', 'name': 'All Purpose Flour', 'measurement': '2 1/2 cups'},
  ];
  List<Map<String, String>> burger = [
    {'image': 'bun.png', 'name': 'Hamburger Bun', 'measurement': '2 pc'},
    {'image': 'beef.png', 'name': 'Ground Beef', 'measurement': '1 lbs'},
    {'image': 'cheese.png', 'name': 'Sliced Cheese', 'measurement': '1 pc'},
    {'image': 'lettuce.png', 'name': 'Lettuce', 'measurement': '4 pcs'},
    {'image': 'onion.png', 'name': 'Minced Onions', 'measurement': '1/2 cup'},
  ];
  List<Map<String, String>> cakes = [
    {'image': 'butter.png', 'name': 'Butter', 'measurement': '2 tbsp'},
    {'image': 'sugar.png', 'name': 'Sugar', 'measurement': '1/4 cup'},
    {'image': 'cflour.png', 'name': 'Cake Flour', 'measurement': '1/4 cup'},
    {'image': 'cocoa.png', 'name': 'Red Cocoa Powder', 'measurement': '2 1/2 tbsp'},
    {'image': 'milk.png', 'name': 'Milk', 'measurement': '1/2 cup'},
  ];
  List<Map<String, String>> pizza = [
    {'image': 'pineapple.png', 'name': 'Pineapple', 'measurement': '1/2 cup'},
    {'image': 'mozcheese.png', 'name': 'Mozzarella Cheese', 'measurement': '1 1/2 cup'},
    {'image': 'bacon.png', 'name': 'Cooked Bacon', 'measurement': '3 slices'},
    {'image': 'crust.png', 'name': 'Pizza Crust', 'measurement': '1/2 recipe'},
  ];
  List<Map<String, String>> hotdog = [
    {'image': 'hatdog.png', 'name': 'Hotdog', 'measurement': '1 pc'},
    {'image': 'bundog.png', 'name': 'Hotdog Bun', 'measurement': '1 pc'},
    {'image': 'sauce.png', 'name': 'Mustard & Ketchup', 'measurement': '1 pc'},
  ];
  List<Map<String, String>> fries = [
    {'image': 'potato.png', 'name': 'Potato', 'measurement': '2 1/2 lbs'},
    {'image': 'flour.png', 'name': 'All Purpose Flour', 'measurement': '1 cup'},
    {'image': 'garlicsalt.png', 'name': 'Garlic Salt', 'measurement': '1 tsp'},
    {'image': 'oil.png', 'name': 'Vegetable Oil', 'measurement': '1 cup'},
  ];
  List<Map<String, String>> donuts = [
    {'image': 'flour.png', 'name': 'All Purpose Flour', 'measurement': '3 cups'},
    {'image': 'eggs.png', 'name': 'Egg', 'measurement': '1 pc'},
    {'image': 'milk.png', 'name': 'Milk', 'measurement': '1 cup'},
    {'image': 'butter.png', 'name': 'Butter', 'measurement': '2 tbsp'},
    {'image': 'sugar.png', 'name': 'Sugar', 'measurement': '1/4 cup'},
  ];
  RecipeDetails({
    Key key,
    this.image,
    this.time,
    this.servings,
    this.name,
    this.desc,
    this.index,
  }) : super(key: key);
  final image, time, servings, name, desc, index;

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> ingredients = [];

    switch (index) {
      case 0: ingredients = List.from(cookie); break;
      case 1: ingredients = List.from(burger); break;
      case 2: ingredients = List.from(cakes); break;
      case 3: ingredients = List.from(pizza); break;
      case 4: ingredients = List.from(hotdog); break;
      case 5: ingredients = List.from(fries); break;
      case 6: ingredients = List.from(donuts); break;
    }
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
            'Recipes',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              Container(
                margin: EdgeInsets.only(top: 20, left: 35, right: 35),
                height: 50,
                decoration: BoxDecoration(
                  color: Beige,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.schedule, color: Colors.grey[700]),
                    SizedBox(width: 10),
                    Text(
                      time,
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.group, color: Colors.grey[700]),
                    SizedBox(width: 10),
                    Text(
                      servings,
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    ),
                    SizedBox(width: 40),
                    for (int i = 1; i <= 5; i++)
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 160, 138, 1),
                        size: 15,
                      ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 190,
                          child: Text(
                            name,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite_outline_rounded,
                              color: Green,
                              size: 30,
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Green.withOpacity(.1),
                                shape: CircleBorder())),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      recipe[index]['desc'],
                      style: TextStyle(
                          fontSize: 18, height: 1.8, color: TextColor),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Ingredients',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    SizedBox(width: 30),
                    for (int i = 0; i < ingredients.length; i++) addImage(i, ingredients)
                  ])),
              Container(
                margin: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Directions',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 25),
                    Text(
                      recipe[index]['steps'],
                      style: TextStyle(
                          fontSize: 18, height: 1.8, color: TextColor),
                    ),
                    SizedBox(height: 30),
                    Center(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addImage(int i, List ingredients) {

    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(right: 7, bottom: 20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.grey[100],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Image.asset('lib/assets/images/' + ingredients[i]['image']),
            )),
        Text(ingredients[i]['name'],
            style: TextStyle(color: TextColor, fontSize: 15)),
        SizedBox(
          height: 7,
        ),
        Text(ingredients[i]['measurement'],
            style: TextStyle(color: TextColor, fontSize: 15)),
      ],
    );
  }
}

// class AddImage extends StatelessWidget {
//   const AddImage({
//     Key key,
//     this.image,
//   }) : super(key: key);
//   final image;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Image.asset('lib/assets/images/' + image),
//     );
//   }
// }
