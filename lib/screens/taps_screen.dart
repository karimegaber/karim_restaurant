import 'package:flutter/material.dart';
import 'package:karim_restaurant/screens/categories_screen.dart';
import 'package:karim_restaurant/screens/favourite_screen.dart';
import 'package:karim_restaurant/widgets/main_drawer.dart';

class TapsScreen extends StatefulWidget {
  @override
  _TapsScreenState createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  List _screens = [
    {
      'screen': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'screen': FavouriteScreen(),
      'title': 'Favourites',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int pageIndex) {
    setState(() {
      _selectedPageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedPageIndex]['title']),
      ),
      body: _screens[_selectedPageIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        selectedFontSize: 18,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        onTap: _selectPage,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
