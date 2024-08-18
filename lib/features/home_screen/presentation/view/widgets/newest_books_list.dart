import 'package:bookly/features/home_screen/presentation/view/widgets/shimmer_books_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import '../../manager/newest_books_cubit/newest_books_states.dart';
import 'newest_book_item.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (context, state) {
          if (state is NewestBooksFailureState) {
            return SliverAnimatedList(
              itemBuilder: (context, index, animation) => Padding(
                padding: const EdgeInsets.only(
                    left: AppPadding.p30, right: AppPadding.p30),
                child: CustomErrorWidget(errorMessage: state.errorMessage),
              ),
              initialItemCount: 5,
            );
          } else if (state is NewestBooksSuccessState) {
            return SliverAnimatedList(
              itemBuilder: (context, index, animation) {
                if (index < state.books.length) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p30, right: AppPadding.p30),
                    child: BookListViewItem(book: state.books[index]),
                  );
                } else {
                  return Container(); // Return an empty container or handle the case appropriately.
                }
              },
              initialItemCount: state.books.length,
            );

          }
          return SliverAnimatedList(
            itemBuilder: (context, index, animation) => const Padding(
              padding:
              EdgeInsets.only(left: AppPadding.p30, right: AppPadding.p30),
              child: ShimmerBookListViewItem(),
            ),
            initialItemCount: 10,
          );
        });
  }
}