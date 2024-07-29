import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'custom_books_list_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p30,top: 16),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomBookImage(),
        ),
      ),
    );
  }
}
