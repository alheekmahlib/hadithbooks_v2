import 'package:flutter/material.dart';
import 'package:hadithbooks_v2/bloc/utils.dart';

class ChangeThemeState {
  final ThemeData themeData;

  ChangeThemeState({@required this.themeData});

  factory ChangeThemeState.darkTheme() {
    return ChangeThemeState(themeData: kDarkTheme);
  }
  factory ChangeThemeState.amoledTheme() {
    return ChangeThemeState(themeData: kAmoledTheme);
  }
}
