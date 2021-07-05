import 'package:flutter/material.dart';
import 'package:karim_restaurant/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const MealDetailScreenRoute = '/MealDetailScreen';

  @override
  Widget build(BuildContext context) {
    var mealId = ModalRoute.of(context).settings.arguments as String;

    var selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                border: Border.all(color: Colors.teal, width: 3),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Ingredients'.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.5)),
                  color: Colors.teal.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.teal.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.teal,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              selectedMeal.ingredients[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoCondensed',
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
            ),
            Text(
              'Steps'.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.5)),
                  color: Colors.teal.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('#${index + 1}'),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
      ),
    );
  }
}
