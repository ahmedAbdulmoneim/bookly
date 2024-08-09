import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        GoRouter.of(context).push(AppRoutes.bookDetailsViewRoute);
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
                    imageUrl: "${book.volumeInfo!.imageLinks!.smallThumbnail}",
                  ),
                ),
              )
            ),
            const SizedBox(
              width: 30,
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
                        const CustomRatingRow()
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
