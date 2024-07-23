import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const CustomBooksListView(),
        Padding(
          padding:
              const EdgeInsets.only(top: AppPadding.p44, left: AppPadding.p30),
          child: Text(
            AppStrings.bestSeller,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        )
      ],
    );
  }
}
