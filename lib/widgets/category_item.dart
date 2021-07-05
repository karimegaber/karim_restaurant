import 'package:flutter/material.dart';
import 'package:karim_restaurant/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({
    this.id,
    this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CategoryMealsScreen.CategoryMealsScreenRoute,
          arguments: {
            'id': this.id,
            'title': this.title,
            'color': this.color,
          },
        );
      },
      splashColor: Colors.yellow,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        bottomLeft: Radius.circular(40),
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.45),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
