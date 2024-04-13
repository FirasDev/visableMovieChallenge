import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/features/movies/application/presentation/pages/movie_details_page.dart';
import 'package:visable_challenge/features/movies/application/presentation/pages/movie_home_page.dart';

import 'router_key.dart';

GoRouter getRouter() => GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: MovieHomePage.routeLocation,
      routes: [
        MovieHomePage.route,
        MovieDetailsPage.route,
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Column(
            children: [
              const Icon(Icons.error, color: Colors.red),
              Text(state.error.toString()),
            ],
          ),
        ),
      ),
    );
