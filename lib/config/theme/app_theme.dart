import 'package:flutter/material.dart';

const Color _curstomColor = Color(0xFF742AEC);
const List<Color> _colorTheme = [
  _curstomColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.blue,
  Colors.grey,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length-1,
            'Color debe estar entre 0 y ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorTheme[selectedColor],
       // brightness:  Brightness.dark
       );
  }
}
