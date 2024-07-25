import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/features/home_screen/presentation/view/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'core/resources/theme_manager.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRoutes.router,
      theme: getApplicationDarkTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}

