import 'package:flutter/material.dart';

final ThemeData kDarkTheme = _buildDarkTheme();

ThemeData _buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Color(0xfff0ebe0),
    backgroundColor: Colors.grey[900],
    accentColor: Colors.white,
    canvasColor: Colors.grey[800],
    buttonColor: Colors.grey[700],
    primaryIconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xfff0ebe0),
          fontSize: 24),
      body1: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xfff0ebe0),
          fontSize: 18),
      body2: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xfff0ebe0),
          fontSize: 16),
      caption: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.normal,
          color: Color(0xfff0ebe0),
          fontSize: 14),
    ),
  );
}

final ThemeData kAmoledTheme = _buildAmoledTheme();

ThemeData _buildAmoledTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Color(0xfff0ebe0),
    backgroundColor: Color(0xfff0ebe0),
    accentColor: Color(0xffd8b87f),
    canvasColor: Color(0xff6b7f4c),
    buttonColor: Color(0xff627545),

    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xff627545),
          fontSize: 24),
      body1: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xff627545),
          fontSize: 18),
      body2: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.bold,
          color: Color(0xff627545),
          fontSize: 16),
      caption: TextStyle(
          fontFamily: 'Sans',
          fontWeight: FontWeight.normal,
          color: Color(0xff627545),
          fontSize: 14),
    ),
  );
}
