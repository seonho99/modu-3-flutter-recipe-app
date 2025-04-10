import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/presentaiton/component/rating_dialog.dart';

void main() {
  testWidgets('별점 dialog', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RatingDialog(
            rating: Rating(
              title: 'Rate recipe',
              actionName: 'send',
              onChange: (value) {
                print('$value');
              },
            ),
          ),
        ),
      ),
    );

    expect(find.text('Rate recipe'), findsOneWidget);
    expect(find.text('send'), findsOneWidget);
  });
}
