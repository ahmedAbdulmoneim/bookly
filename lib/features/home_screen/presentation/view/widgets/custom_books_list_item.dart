import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.66,
      child: Container(
        margin: const EdgeInsets.only(right: AppMargin.m15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/test.png',
            ),
          ),
        ),
      ),
    );
  }
}
