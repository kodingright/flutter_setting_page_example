import 'package:flutter/material.dart';

class Constants{
  //Colors for theme
  static Color lightPrimary = Colors.amber;
  static Color darkPrimary = Color(0xff2B2B2B);
  static Color lightAccent = Colors.amberAccent;
  static Color darkAccent = Color(0xff597ef7);
  static Color lightBG = Color(0xfff3f4f9);
  static Color darkBG = Color(0xff2B2B2B);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 2,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 2,
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static const largeText = "Fast Development: Paint your app to life in milliseconds"
                          "with Stateful Hot Reload. Use a rich"
                          "set of fully-customizable widgets to build native"
                          "interfaces in minutes.UI design in Flutter involves"
                          " using composition to assemble create Widgets from "
                          "other Widgets. The trick to understanding this is to "
                          "realize that any tree of components (Widgets) that is "
                          "assembled under a single build() method is also referred"
                          " to as a single Widget. This is because those smaller "
                          "Widgets are also made up of even smaller Widgets, and "
                          "each has a build() method of its own. This is how Flutter"
                          " makes use of Composition."
                          "The docs say: A widget is an immutable description of part of a user interface. "
                          "A human being will tell you it's a Blueprint, which is a much easier way "
                          "to think about it. However, one also needs to keep in mind there are many "
                          "types of Widgets in Flutter, and you cannot see or touch all of them. Text "
                          "is a Widget, but so is its TextStyle, which defines things like size, color, "
                          "font family and weight. There are Widgets that represent things, ones that "
                          "represent characteristics (like TextStyle) and even others that do things, "
                          "like FutureBuilder and StreamBuilder."
                          "Complex widgets can be created by combining many simpler ones, and an app "
                          "is actually just the largest Widget of them all (often called MyApp). "
                          "The MyApp Widget contains all the other Widgets, which can contain even"
                          " smaller Widgets, and together they make up your app."
                          "However, the use of widgets is not strictly required to build Flutter apps."
                          " An alternative option, usually only used by people who like to control"
                          " every pixel drawn to the canvas, is to use the Foundation library's methods"
                          " directly. These methods can be used to draw shapes, text, and imagery "
                          "directly to the canvas. This ability of Flutter has been utilized in a"
                          " few frameworks, such as the open-source Flame game engine. ";

}