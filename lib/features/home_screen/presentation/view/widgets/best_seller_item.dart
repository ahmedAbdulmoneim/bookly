import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/features/home_screen/presentation/view/book_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/resources/font_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_rating_row.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p30, right: AppPadding.p30,),
      child: GestureDetector(
        onTap: (){
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
                              ?.copyWith(fontFamily: FontConstants.kGtSectraFine),
                        )),
                    Text(
                      'J.K. Rowling',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                    const CustomRatingRow()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


