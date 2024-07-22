import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/view/home.dart';
import 'package:bookly/features/splash/presentation/views/widgets/transitions/fade_transition.dart';
import 'package:bookly/features/splash/presentation/views/widgets/transitions/slid_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_view/splash_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(
      loadingIndicator: SlideTransitionAnimation(
        transitionedWidget: Text(
          'Read free books',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      showStatusBar: true,
      logo: FadeTransitionAnimation(
        transitionedWidget: Center(
          child: SvgPicture.asset(
            ImagesData.splashLogo,
            width: AppSize.s200,
          ),
        ),
      ),
      duration: const Duration(seconds: AppDuration.d6),
      done: Done(const HomeView()),
    );
  }
}

