
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_event.freezed.dart';

@freezed
sealed class SearchRecipesEvent with _$SearchRecipesEvent {
  const factory SearchRecipesEvent.showDialog(String message) = ShowDialog;

  const factory SearchRecipesEvent.showSnackBar(String message) = ShowSnackBar;

  const factory SearchRecipesEvent.networkError(String message) = NetworkError;

  const factory SearchRecipesEvent.timeoutError(String message) = TimeoutError;
}
