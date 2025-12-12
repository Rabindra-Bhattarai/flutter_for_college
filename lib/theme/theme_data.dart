import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.grey,
    fontFamily: 'OpenSans Regular',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(100, 20, 30, 50),
          fontWeight: FontWeight.w500,
          fontFamily: 'OpenSans regular'
        ),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),

        )
      )
    ),
  );
}