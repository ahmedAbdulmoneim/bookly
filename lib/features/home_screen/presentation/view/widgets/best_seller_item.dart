import 'package:bookly/core/resources/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/resources/font_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_rating_row.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsViewRoute);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetails(),));
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.666,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/images/t.png',
                    ),
                  ),
                ),
              ),
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
                        'Harry Potter and the Goblet of Fire and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                                fontFamily: FontConstants.kGtSectraFine),
                      )),
                  Text(
                    'J.K. Rowling',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white.withOpacity(0.7)),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          '19.99 € ',
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
