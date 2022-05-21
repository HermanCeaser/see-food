import 'package:flutter/material.dart';
import 'package:see_food/models/models.dart';
import '../api/mock_see_food_service.dart';
import '../components/components.dart';



class RecipesScreen extends StatelessWidget {
  final exploreService = MockSeeFoodService();
  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (BuildContext context, AsyncSnapshot<List<SimpleRecipe>>snapshot) {
        if(snapshot.connectionState != ConnectionState.done){
          return const Center(child: CircularProgressIndicator());
        }
        return RecipesGridView(recipes: snapshot.data!);
      },

    );
  }
}
