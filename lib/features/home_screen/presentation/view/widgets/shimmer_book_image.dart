import 'package:bookly/core/widgets/custom_shimmer_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';

class ShimmerBookImage extends StatelessWidget {
  const ShimmerBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s16),
        child: CustomShimmerLoading(
          shimmerChild: AspectRatio(
            aspectRatio: 0.66,
            child: Container(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
