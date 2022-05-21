import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:see_food/see_food_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 380, height: 500),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40,),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: SeeFoodTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(

              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  children: [
                    Chip(
                      label: Text('Healthy',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Vegan',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Carrots',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Spices',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Tomatoes',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Onions',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Dieting',
                          style: SeeFoodTheme.darkTextTheme.bodyText1),
                      backgroundColor:Colors.black.withOpacity(0.7),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
