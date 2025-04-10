import 'package:flutter/material.dart';
import 'package:recipe_app/presentaiton/component/filter_button.dart';
import 'package:recipe_app/presentaiton/component/ingredient_item.dart';
import 'package:recipe_app/presentaiton/component/recipe_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                IngredientItem(
                  ingredient: Ingredient(name: 'Tomatos', weight: 500),
                ),
                SizedBox(height: 20),
                RecipeCard(
                  title: 'Traditional spare ribs baked',
                  author: 'By Chef John',
                  cookTimes: 20,
                  rate: Rate(rateStar: 4),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterButton(buttons: Buttons(text: '5')),
                    SizedBox(width: 20),
                    RatingButton(buttons: Buttons(text: 'text')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
