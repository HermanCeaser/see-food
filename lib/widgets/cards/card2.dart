import 'package:flutter/material.dart';
import 'package:see_food/see_food_theme.dart';
import 'package:see_food/widgets/cards/author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 380, height: 500),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mag5.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            // TODO 1: add author Information
            const AuthorCard(
              authorName: 'Herman Ceaser',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/images/author_katz.jpeg'),
            ),
            // TODO 4: Add Positioned Text
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: SeeFoodTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: SeeFoodTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
