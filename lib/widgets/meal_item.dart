import 'package:flutter/material.dart';
import 'package:karim_restaurant/models/meal.dart';
import 'package:karim_restaurant/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;

  const MealItem({
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.complexity,
    this.affordability,
    this.removeItem,
  });

  String get mealComplexity {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
        break;
    }
  }

  String get mealAffordability {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unknown';
        break;
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.MealDetailScreenRoute,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.teal.withOpacity(0.3),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Image.network(imageUrl),
                ),
                Positioned(
                  bottom: 50,
                  right: 0,
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        this.title,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${duration} mins',
                        style: TextStyle(fontFamily: 'RobotoCondensed'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        mealComplexity,
                        style: TextStyle(fontFamily: 'RobotoCondensed'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        mealAffordability,
                        style: TextStyle(fontFamily: 'RobotoCondensed'),
                      ),
                    ],
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
