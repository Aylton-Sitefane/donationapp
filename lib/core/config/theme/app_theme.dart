import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:flutter/material.dart';

class AppTheme{

  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.lightBackground,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: AppColor.appbarColor,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      
      style: ElevatedButton.styleFrom(
        
        backgroundColor: AppColor.primaryColor,
        textStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white38,
          fontWeight: FontWeight.bold,

        ),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(30),

        ),
      ),
      
    ),
  );

  static final darkTheme =  ThemeData(
    primaryColor: AppColor.primaryColor,
    fontFamily: 'Satoshi',

    scaffoldBackgroundColor: AppColor.darkBackground,
    brightness: Brightness.dark,
     appBarTheme: const AppBarTheme(
      color: AppColor.appbarColor,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),

        ),
      ),
    ),
  );
}