import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int index = 0;

  List persons = [
    'Twist',
    'معلم سمسم',
    'دكتور لودر',
    'مريوم',
    'استاذ حاتم',
  ];

  List colors = [
    Colors.teal,
    Colors.redAccent,
    Colors.deepPurpleAccent,
    Colors.deepOrange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            persons[index],
            style: TextStyle(
              color: colors[index],
              fontSize: 45,
            ),
          ),
          RaisedButton(
            color: Colors.teal.withOpacity(0.5),
            child: Text(
              'القمر اللي بعده',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              setState(() {
                if (index < 4)
                  index++;
                else
                  index = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
