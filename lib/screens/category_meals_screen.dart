import 'package:flutter/material.dart';
import 'package:karim_restaurant/dummy_data.dart';
import 'package:karim_restaurant/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String CategoryMealsScreenRoute = '/CategoryMealsScreen';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  List categoryMeals;
  void removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mealsData = ModalRoute.of(context).settings.arguments as Map;
    final categoryId = mealsData['id'];
    String categoryTitle = mealsData['title'];
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
            removeItem: () {},
          );
        },
      ),
    );
  }
}
