import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/search/data/repo/search_repo_implementaion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/service_locator.dart';
import '../../../../home_screen/presentation/view/widgets/newest_book_item.dart';
import '../../../../home_screen/presentation/view/widgets/shimmer_books_list_view_item.dart';
import '../../manager/search_cubit.dart';
import '../../manager/search_states.dart';
import 'custom_search_box.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImplementation>()),
      child: BlocConsumer<SearchCubit, SearchStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p20, horizontal: AppPadding.p30),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CustomSearchBox(),
                      SizedBox(
                        height: AppSize.s20,
                      ),
                    ],
                  ),
                ),
                state is SearchLoadingState
                    ? SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return const ShimmerBookListViewItem();
                          },
                          childCount: 10,
                        ),
                      )
                    : state is SearchSuccessState && state.bookModel.isNotEmpty
                        ? SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return BookListViewItem(
                                    book: state.bookModel[index]);
                              },
                              childCount: state.bookModel.length,
                            ),
                          )
                        : state is SearchSuccessState && state.bookModel.isEmpty
                            ? SliverToBoxAdapter(
                                child: Text(
                                  "No Result Founded",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              )
                            : const SliverToBoxAdapter(child: SizedBox()),
              ],
            ),
          );
        },
      ),
    );
  }
}
