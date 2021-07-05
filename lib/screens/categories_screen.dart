import 'package:flutter/material.dart';
import 'package:karim_restaurant/dummy_data.dart';
import 'package:karim_restaurant/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const String CategoriesScreenRoute = '/CategoriesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2,
            crossAxisCount: 2,
          ),
          children: DUMMY_CATEGORIES.map((categoryInfo) {
            return CategoryItem(
              id: categoryInfo.id,
              title: categoryInfo.title,
              color: categoryInfo.color,
            );
          }).toList(),
        ),
      ),
    );
  }
}
