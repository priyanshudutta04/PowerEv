// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


class MyThemes {
  static final lightTheme = ThemeData(
      primarySwatch:Colors.deepPurple, // changes all colours with respect to given colour
      canvasColor: Color.fromRGBO(14, 24, 29, 1),
      cardColor: Color.fromRGBO(116, 255, 172, 1),
      focusColor: Colors.white,
      splashColor: Color.fromARGB(255, 84, 84, 84),
      appBarTheme: AppBarTheme(
        color: const Color.fromARGB(255, 205, 78, 228),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
      ),
      // pageTransitionsTheme: PageTransitionsTheme(
      //     builders: {
      //       TargetPlatform.android: ZoomPageTransitionsBuilder(),
      //       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      //     },
      //   ),
    );

  static final darkTheme = ThemeData(
      primarySwatch: Colors.deepOrange,
      canvasColor: Color.fromRGBO(243,229,245, 1),
      cardColor: Color.fromRGBO(116, 255, 172, 1),
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.red)
      )
    );
}