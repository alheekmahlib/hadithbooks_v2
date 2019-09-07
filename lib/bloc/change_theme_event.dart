abstract class ChangeThemeEvent {}

class DarkTheme extends ChangeThemeEvent {
  @override
  String toString() => 'Dark Theme';
}

class AmoledTheme extends ChangeThemeEvent {
  @override
  String toString() => 'Amoled Theme';
}
