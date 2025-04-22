import 'package:recipe_app/data/mapper/recipe_mapper.dart';

import '../../domain/model/recipe.dart';
import '../../domain/repository/recipe_repository.dart';
import '../data_source/mock_recipe_source_impl.dart';
import '../data_source/recipe_data_source.dart';
import '../dto/recipe_dto.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _dataSource = MockRecipeDataSourceImpl();

  RecipeDataSource get dataSource => _dataSource;

  @override
  Future<List<Recipe>> getRecipe() async {
    List<RecipeDto> recipeDto = await dataSource.getRecipeDto();
    return recipeDto.map((dto) => dto.toRecipe()).toList();
  }

  @override
  Future<List<Recipe>> searchRecipes(String query) async {
    List<RecipeDto> allRecipes = await dataSource.getRecipeDto();
    String lowerQuery = query.toLowerCase();

    List<RecipeDto> filterRecipes =
        allRecipes.where((recipe) {
          final recipeName = recipe.name?.toLowerCase() ?? '';
          return recipeName.contains(lowerQuery);
        }).toList();
    return filterRecipes.map((dto) => dto.toRecipe()).toList();
  }
}
