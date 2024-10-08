import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xff5D9CEC);
  static const Color darkPrimaryColor = Color(0xff060E1E);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color backGroundColor = Color(0xffDFECDB);
  static const Color blackColor = Color(0xff303030);

  static const Color greenColor = Color(0xff61E757);

  static const Color redColor = Color(0xffEC4B4B);

  static const Color grayColor = Color(0xffa3a7ad);

  static ThemeData lightTheme = ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: primaryColor,
          unselectedItemColor: grayColor),
      primaryColor: primaryColor,
      textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          titleMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          titleSmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)));
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          titleMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          titleSmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)));
}
