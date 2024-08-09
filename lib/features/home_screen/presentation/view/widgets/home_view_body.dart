import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'newest_book_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const CustomBooksListView(),
              Padding(
                padding:
                const EdgeInsets.only(top: AppPadding.p44, left: AppPadding.p30,bottom: AppPadding.p12),
                child: Text(
                  AppStrings.newestBooks,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child:   NewestBooksListView(),
        )
      ],
    );

  }
}
