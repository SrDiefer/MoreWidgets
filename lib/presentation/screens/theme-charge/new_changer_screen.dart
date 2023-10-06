import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_formato/presentation/providers/theme_provider.dart';

class ThemeChargerScreen extends ConsumerWidget{
  static const name = 'theme_changer_screen';

  const ThemeChargerScreen({super.key});

  @override
  Widget build(BuildContext context, ref){
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
          }, icon: Icon(isDarkMode? Icons.dark_mode_outlined: Icons.light_mode_outlined)
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget{
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref){
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value) {
            ref.watch(themeNotifierProvider.notifier).changeColorIndex(index);
          },
          );
      }
    );
      
  }
}