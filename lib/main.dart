import 'package:flutter/material.dart';
import 'package:see_food/see_food_theme.dart';
import 'home.dart';

void main() {
  runApp(const SeeFood());
}

class SeeFood extends StatelessWidget {
  const SeeFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = SeeFoodTheme.dark();
    return MaterialApp(
        title: 'SeeFood',
        theme: theme,
        home: const Home(),
    );
  }
}
