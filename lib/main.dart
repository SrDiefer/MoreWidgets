import 'package:flutter/material.dart';
import 'package:widget_formato/config/router/app_router.dart';
import 'package:widget_formato/config/theme/app_theme.dart';


void main() => runApp(const MyApp()); //cambiar a llave si no funciona

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      
  
    );
  }
}