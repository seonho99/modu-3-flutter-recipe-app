import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_state.dart';

import '../../domain/repository/recipe_repository.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;
  SearchRecipesState _state;

  SearchRecipesViewModel(this._recipeRepository, this._state);

  SearchRecipesState get state => _state;

  set state(SearchRecipesState newState) {
    _state = newState;
  }

  Future<void> fetchRecipes() async {
    state = state.copyWith(isLoading: true);
    notifyListeners();

    state = state.copyWith(
      recipes: await _recipeRepository.getRecipe(),
      isLoading: false,
    );
    notifyListeners();
  }

  Future<void> fetchSearchRecipes(String query) async {
    state = state.copyWith(isLoading: true);
    notifyListeners();

    if (query.isEmpty) {
      final allRecipes = await _recipeRepository.getRecipe();
      state = state.copyWith(recipes: allRecipes, isLoading: false);
    } else {
      final searchRecipes = await _recipeRepository.searchRecipes(query);
      state = state.copyWith(filterRecipes: searchRecipes, isLoading: false);
    }

    notifyListeners();
  }

  Future<void> updateKeyword(String keyword) async {
    state = state.copyWith(searchKeyword: keyword);
    await fetchSearchRecipes(keyword);
  }
}
