import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';

class SlideTransitionAnimation extends StatefulWidget {
  const SlideTransitionAnimation({super.key, required this.transitionedWidget});

  final Widget transitionedWidget;

  @override
  State<SlideTransitionAnimation> createState() => _SlideTransitionAnimation();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _SlideTransitionAnimation extends State<SlideTransitionAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: AppDuration.d6),
    vsync: this,
  )..repeat(period: const Duration(seconds: AppDuration.d8));
  late final Animation<Offset> _animation =
  Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
      .animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.transitionedWidget,
    );
  }
}