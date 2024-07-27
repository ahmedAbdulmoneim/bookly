import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';
import 'custom_books_list_item.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p30, top: AppPadding.p36),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.27,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomBookImage(),
        ),
      ),
    );
  }
}
