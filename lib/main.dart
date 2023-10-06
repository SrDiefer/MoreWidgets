import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_formato/config/router/app_router.dart';
import 'package:widget_formato/config/theme/app_theme.dart';
import 'package:widget_formato/presentation/providers/theme_provider.dart';


void main() => runApp(
  const ProviderScope(
    child: MyApp())
    ); //cambiar a llave si no funciona

class MyApp extends ConsumerWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return  MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      
  
    );
  }
}