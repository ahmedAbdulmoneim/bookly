import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/features/home_screen/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/resources/service_locator.dart';
import 'core/resources/theme_manager.dart';
import 'features/home_screen/data/repo/home_repo_implementation.dart';

void main() {
  setupServicLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImplementation>()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        theme: getApplicationDarkTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
