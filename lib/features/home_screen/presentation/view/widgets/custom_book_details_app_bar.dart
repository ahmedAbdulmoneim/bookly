import 'package:flutter/material.dart';

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
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 25,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}