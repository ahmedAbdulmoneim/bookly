import 'package:bookly/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.bookImage
  });
final String? bookImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.66,
      child: Container(
        margin: const EdgeInsets.only(right: AppMargin.m10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s16),
          color: Colors.red,
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              bookImage?? "http://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
            ),
          ),
        ),
      ),
    );
  }
}
