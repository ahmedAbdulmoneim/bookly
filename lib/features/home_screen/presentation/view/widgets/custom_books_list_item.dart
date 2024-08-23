import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.bookImage});

  final String? bookImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s16),
        child: AspectRatio(
          aspectRatio: 0.66,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageUrl: bookImage ?? ImagesData.noCover),
        ),
      ),
    );
  }
}
