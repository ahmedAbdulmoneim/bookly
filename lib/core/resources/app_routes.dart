import 'package:bookly/features/home_screen/presentation/view/book_details.dart';
import 'package:bookly/features/home_screen/presentation/view/home.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes{
  static const homeViewRoute = "/homeView";
  static const bookDetailsViewRoute = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static final  router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashViewScreen();
        },
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetails();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}