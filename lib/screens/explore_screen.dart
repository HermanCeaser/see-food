import 'package:flutter/material.dart';
import '../api/mock_see_food_service.dart';
import '../components/components.dart';
import '../models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockSeeFoodService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          final recipes = snapshot.data!.todayRecipes;
          return ListView(
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: recipes),
                const SizedBox(height: 16),
                FriendPostListView(friendPosts: snapshot.data!.friendPosts),
              ]
          );
        } else {
          return const Center(child: CircularProgressIndicator(),
          );
        }
      },

    );
  }
}
