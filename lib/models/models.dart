import 'package:flutter/material.dart';
import 'package:lesson1/util/const.dart';
import 'package:flutter/foundation.dart';

class ThemeValue with ChangeNotifier{
  bool _islight = true;
  ThemeData _themeData = Constants.lightTheme;

  bool get isLight => _islight;
  ThemeData get currentTheme => _themeData;

  void setIsLight(bool value){
    _islight = value;
    notifyListeners();
  }

  void setThemeData(bool value){
    if(value){
      _themeData = Constants.lightTheme;
    }else{
      _themeData  = Constants.darkTheme;
    }    
    notifyListeners();
  }

}

class FontSize with ChangeNotifier{
  double _size = 10;

  double get size => _size;

  void setSize(double value){
    _size = value;
    notifyListeners();
  }
}