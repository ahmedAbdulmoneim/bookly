import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/resources/values_manager.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p22, right: AppPadding.p22, top: AppPadding.p44),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: AppSize.s25,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: AppSize.s25,
            ),
          )
        ],
      ),
    );
  }
}