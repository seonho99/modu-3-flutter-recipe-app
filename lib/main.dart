import 'package:flutter/material.dart';
import 'package:recipe_app/presentaiton/component/ingredient_item.dart';

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
            child: IngredientItem(
              ingredient: Ingredient(name: 'Tomatos', weight: 500),
            ),
          ),
        ),
      ),
    );
  }
}
