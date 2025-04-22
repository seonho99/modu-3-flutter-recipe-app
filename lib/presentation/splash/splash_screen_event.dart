import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_event.freezed.dart';

@freezed
sealed class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.showDialog(String message) = ShowDialog;

  const factory SplashScreenEvent.showSnackbar(String message) = ShowSnackbar;

  const factory SplashScreenEvent.networkError(String message) = networkError;

  const factory SplashScreenEvent.timeoutError(String message) = timeoutError;
}
