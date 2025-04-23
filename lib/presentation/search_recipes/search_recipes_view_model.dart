import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_app/domain/use_case/get_recipes_use_case.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_event.dart';
import 'package:recipe_app/presentation/search_recipes/search_recipes_state.dart';

import '../../domain/repository/recipe_repository.dart';

class SearchRecipesViewModel with ChangeNotifier {
  SearchRecipesState _state = const SearchRecipesState();

  SearchRecipesState get state => _state;

  final _eventController = StreamController<SearchRecipesEvent>();

  Stream<SearchRecipesEvent> get eventStream => _eventController.stream;

  void filterRecipes(SearchRecipesState newValue) {
    _state = state.copyWith(
      isLoading: false,
      filterRecipes: newValue.filterRecipes,
    );
    notifyListeners();
  }

  void onNetworkError() {
    _eventController.add(SearchRecipesEvent.showDialog('네트워크 에러 발생'));
  }

  void onError2() {
    _eventController.add(SearchRecipesEvent.networkError('네트워크 에러'));
  }

  void onError3() {
    _eventController.add(SearchRecipesEvent.timeoutError('message'));
  }

  void onError4() {
    _eventController.add(SearchRecipesEvent.showSnackBar('message'));
  }
}
