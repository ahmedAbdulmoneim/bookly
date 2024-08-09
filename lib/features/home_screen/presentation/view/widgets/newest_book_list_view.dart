import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home_screen/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/newest_book_item.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/shimmer_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p30,
              right: AppPadding.p30,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) =>
                  BookListViewItem(book: state.books[index]),
              itemCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        // Shimmer loading state
        return Padding(
          padding: const EdgeInsets.only(
            left: AppPadding.p30,
            right: AppPadding.p30,
          ),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => const ShimmerBookListViewItem(),
            itemCount: 5, // Number of shimmer items to display
          ),
        );
      },
    );
  }
}
