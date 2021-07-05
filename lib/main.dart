import 'package:flutter/material.dart';
import 'package:karim_restaurant/screens/category_meals_screen.dart';
import 'package:karim_restaurant/screens/filters_screen.dart';
import 'package:karim_restaurant/screens/meal_detail_screen.dart';
import 'package:karim_restaurant/screens/taps_screen.dart';

import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karim Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        CategoriesScreen.CategoriesScreenRoute: (context) => CategoriesScreen(),
        CategoryMealsScreen.CategoryMealsScreenRoute: (context) =>
            CategoryMealsScreen(),
        MealDetailScreen.MealDetailScreenRoute: (context) => MealDetailScreen(),
        FiltersScreen.FiltersScreenRoute: (context) => FiltersScreen(),
      },
      home: TapsScreen(),
    );
  }
}
