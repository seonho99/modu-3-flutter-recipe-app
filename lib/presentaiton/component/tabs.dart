import 'package:flutter/material.dart';
import 'package:recipe_app/presentaiton/ui/color_styles.dart';

import '../ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:,
      ),
    );
  }
}


class TabsWidget extends StatelessWidget implements TextStyles {
  final List<String> labels;
  final int selectedIndex;
  final Function(int) onValueChange;

  const TabsWidget({
    required this.labels,
    required this.selectedIndex,
    required this.onValueChange,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 375,
        height: 58,
        child:


      ),
    );
  }
}
