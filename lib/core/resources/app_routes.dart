import 'package:bookly/core/resources/service_locator.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo_implementation.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/view/book_details.dart';
import 'package:bookly/features/home_screen/presentation/view/home.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
              child:  BookDetails(
                bookModel: state.extra as BookModel,
              ));
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