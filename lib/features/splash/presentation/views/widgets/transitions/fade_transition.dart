import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';

class FadeTransitionAnimation extends StatefulWidget {
  const FadeTransitionAnimation({super.key, required this.transitionedWidget});

  final Widget transitionedWidget;

  @override
  State<FadeTransitionAnimation> createState() =>
      _FadeTransitionAnimationState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _FadeTransitionAnimationState extends State<FadeTransitionAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration:  const Duration(seconds: AppDuration.d6),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastOutSlowIn);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.transitionedWidget,
    );
  }
}