import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/font_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_rating_row.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.book
  });
  final BookModel book ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsViewRoute,extra: book);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.666,
              child: Padding(
                padding: const EdgeInsets.only(bottom: AppSize.s20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s12),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: book.volumeInfo!.imageLinks?.smallThumbnail != null ? "${book.volumeInfo!.imageLinks!.smallThumbnail}" : ImagesData.noCover,
                  ),
                ),
              )
            ),
            const SizedBox(
              width: AppSize.s30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        book.volumeInfo!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                                fontFamily: FontConstants.kGtSectraFine),
                      )),
                  Text(
                    book.volumeInfo!.authors![0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white.withOpacity(0.7)),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "Free",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const Spacer(),
                        CustomRatingRow(
                          rating: book.volumeInfo?.averageRating ?? 0,
                          ratingCount: book.volumeInfo?.ratingCount ?? 0 ,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
