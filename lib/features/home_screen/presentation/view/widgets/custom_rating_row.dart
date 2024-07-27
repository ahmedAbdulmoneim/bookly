import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/resources/values_manager.dart';

class CustomRatingRow extends StatelessWidget {
  const CustomRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}