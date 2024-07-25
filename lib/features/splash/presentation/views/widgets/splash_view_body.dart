import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/splash/presentation/views/widgets/transitions/fade_transition.dart';
import 'package:bookly/features/splash/presentation/views/widgets/transitions/slid_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: AppDuration.d6), () {
      if (mounted) {
        context.go('/homeView');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransitionAnimation(transitionedWidget: Center(
            child: SvgPicture.asset(
              ImagesData.splashLogo,
              width: AppSize.s200,
            ),
          ),),
          SlideTransitionAnimation(
            transitionedWidget:  Text(
              'Read free books',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

        ],
      ),
    );
  }
}
