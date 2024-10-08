import 'package:bookly/core/resources/app_routes.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home_screen/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/shimmer_book_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_books_list_item.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p30, top: AppPadding.p36),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.25,
        child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
          builder: (context, state) {
            return ConditionalBuilder(
              builder: (context) => state is FeaturedBooksFailureState
                  ? CustomErrorWidget(errorMessage: state.errorMessage)
                  :  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const ShimmerBookImage(),
                    ),
              fallback: (context) => state is FeaturedBooksSuccessState
                  ? ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.books.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: (){
                          GoRouter.of(context).push(AppRoutes.bookDetailsViewRoute,extra: state.books[index]);
                        },
                        child: CustomBookImage(
                          bookImage:
                              '${state.books[index].volumeInfo!.imageLinks!.thumbnail}',
                        ),
                      ),
                    )
                  : Container(),
              condition: state is! FeaturedBooksSuccessState,
            );
          },
        ),
      ),
    );
  }
}
