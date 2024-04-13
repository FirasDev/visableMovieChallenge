import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:visable_challenge/app/dependancy/injection.dart';
import 'package:visable_challenge/app/visable_theme_data.dart';
import 'package:visable_challenge/app/router/router.dart';

void main() async {
  await configureDependencies();
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getRouter(),
      theme: VisableThemeData.lightThemeData,
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
