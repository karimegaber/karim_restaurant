import 'package:flutter/material.dart';
import 'package:karim_restaurant/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const String FiltersScreenRoute = '/FiltersScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Center(
        child: Text('Filters'),
      ),
      drawer: MainDrawer(),
    );
  }
}
