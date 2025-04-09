import 'package:flutter/material.dart';
import 'package:recipe_app/presentaiton/ui/color_styles.dart';

import '../ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ButtonsWidget(
          onClick: () {
            print('click button');
          },
          buttons: Buttons(name: 'buttons'),
        ),
      ),
    );
  }
}

class Buttons {
  final String name;

  const Buttons({required this.name});
}

class ButtonsWidget extends StatelessWidget implements TextStyles {
  final VoidCallback onClick;
  final Buttons buttons;

  const ButtonsWidget({required this.onClick, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onClick,
            child: Container(
              width: 315,
              height: 60,
              decoration: BoxDecoration(
                color: ColorStyles.primary100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 85),
                  Text(
                    buttons.name,
                    style: TextStyles.mediumTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  const SizedBox(width: 85),
                ],
              ),
            ),
          ),

          const SizedBox(height: 50),

          GestureDetector(
            onTap: onClick,
            child: Container(
              width: 243,
              height: 54,
              decoration: BoxDecoration(
                color: ColorStyles.primary100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 50),
                  Text(
                    buttons.name,
                    style: TextStyles.normalTextBold.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  const SizedBox(width: 50),
                ],
              ),
            ),
          ),

          const SizedBox(height: 50),

          GestureDetector(
            onTap: onClick,
            child: Container(
              width: 174,
              height: 37,
              decoration: BoxDecoration(
                color: ColorStyles.primary100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  Text(
                    buttons.name,
                    style: TextStyles.normalTextBold.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  const SizedBox(width: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
