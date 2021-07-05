import 'package:flutter/material.dart';
import 'package:karim_restaurant/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      {IconData icon, String title, Function onPressListTile}) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      leading: Icon(
        icon,
        size: 26,
        color: Colors.teal,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onPressListTile,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Text(
                'Karim Restaurant',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
                icon: Icons.restaurant,
                title: 'Meal',
                onPressListTile: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
            buildListTile(
                icon: Icons.settings,
                title: 'Filters',
                onPressListTile: () {
                  Navigator.of(context)
                      .pushReplacementNamed(FiltersScreen.FiltersScreenRoute);
                }),
          ],
        ),
      ),
    );
  }
}
