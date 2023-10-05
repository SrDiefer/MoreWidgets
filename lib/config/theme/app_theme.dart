import 'package:flutter/material.dart';
const colorList = <Color>[
Colors.blue,
Colors.teal,
Colors.green,
Colors.red,
Colors.purple,
Colors.deepPurple,
Colors.orange,
Colors.pink,
Colors.pinkAccent,
Color.fromARGB(255, 225,190, 231),
Color.fromARGB(216, 107, 45, 117)
];

class AppTheme{
  final selectedColor;

  AppTheme({
    this.selectedColor=0
  }): assert(selectedColor >=0, 'Selected color must be greater then 0'),
  assert(selectedColor <= colorList.length, 'Selected color must be less or equal tha ${colorList.length-1}') ;


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme:  const AppBarTheme(
      centerTitle:false,
    )
  );
}