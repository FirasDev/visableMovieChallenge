import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/router/router_key.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  static String get routeName => 'movie_home_page';

  static String get routeLocation => '/$routeName';

  static GoRoute get route => GoRoute(
        name: routeName,
        path: routeLocation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const MovieHomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hello')),
    );
  }
}
