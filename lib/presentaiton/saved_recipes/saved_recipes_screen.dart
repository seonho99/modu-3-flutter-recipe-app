import 'package:flutter/material.dart';
import 'package:recipe_app/presentaiton/saved_recipes/saved_recipes_view_model.dart';


class SavedRecipesScreen extends StatefulWidget {
  final SavedRecipesViewModel savedRecipesViewModel;

  const SavedRecipesScreen({super.key, required this.savedRecipesViewModel});

  @override
  State<SavedRecipesScreen> createState() => _SavedRecipesScreenState();
}

class _SavedRecipesScreenState extends State<SavedRecipesScreen> {
  @override
  void initState() {
    super.initState();
    widget.savedRecipesViewModel.fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('저장된 레시피')),
      body: ListenableBuilder(
        listenable: widget.savedRecipesViewModel,
        builder: (context, child) {
          final recipes = widget.savedRecipesViewModel.recipes;

          return ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: RecipeCard(recipe: recipes[index]),
              );
            },
          );
        },
      ),
    );
  }
}
