import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerLoading extends StatelessWidget {
  const CustomShimmerLoading({super.key, required this.shimmerChild});

  final Widget shimmerChild;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xff3A3A3A),
      highlightColor: Colors.grey.shade700,
      enabled: true,
      child: shimmerChild,
    );
  }
}
