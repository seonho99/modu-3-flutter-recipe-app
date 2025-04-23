import 'package:recipe_app/core/result/result.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/recipe_repository.dart';

class GetRecipesUseCase {
  final RecipeRepository _recipeRepository;

  GetRecipesUseCase(this._recipeRepository);

  @override
  Future<Result<List<Recipe>>> excute() async {
    try {
      final recipes = await _recipeRepository.getRecipe();
      return Result.success(recipes);
    } catch (e) {
      return Result.error('레시피 불러오기 실패');
    }
  }
}
