import 'package:riverpod/riverpod.dart';
import 'package:widget_formato/config/theme/app_theme.dart';





final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>
((ref) => ThemeNotifier());

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{

  ThemeNotifier(): super (AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}