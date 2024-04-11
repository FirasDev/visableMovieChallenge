import 'package:flutter/material.dart';
import 'package:visable_challenge/app/movie_theme_data.dart';
import 'package:visable_challenge/app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getRouter(),
      theme: MovieThemeData.lightThemeData,
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
