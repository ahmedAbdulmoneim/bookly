import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/resources/font_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p30, right: AppPadding.p30,),
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
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          '19.99 € ',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.solidStar,
                              color: Color(0xFFFFDD4F),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '4.8',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(
                              width: AppSize.s4,
                            ),
                            Text(
                              '(2390)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
