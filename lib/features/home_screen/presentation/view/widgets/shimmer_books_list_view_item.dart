import 'package:bookly/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/widgets/custom_shimmer_indicator.dart';

class ShimmerBookListViewItem extends StatelessWidget {
  const ShimmerBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.666,
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSize.s20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s12),
                child: CustomShimmerLoading(
                  shimmerChild: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSize.s30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomShimmerLoading(
                  shimmerChild: Container(
                    height: AppSize.s20,
                    width: MediaQuery.of(context).size.width,
                    color: ColorManger.whit,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                CustomShimmerLoading(
                  shimmerChild: Container(
                    height: AppSize.s20,
                    width: AppSize.s100,
                    color: ColorManger.whit,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Row(
                  children: [
                    CustomShimmerLoading(
                      shimmerChild: Container(
                        height: 20,
                        width: 70,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    CustomShimmerLoading(
                      shimmerChild: Container(
                        height: AppSize.s20,
                        width: AppSize.s100,
                        color: ColorManger.whit,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
