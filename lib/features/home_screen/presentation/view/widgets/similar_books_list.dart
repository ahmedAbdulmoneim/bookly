import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'custom_books_list_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
      builder: (context, state) {
        bool enable = false;
        if(state is SimilarBooksSuccessState){
          enable = !enable;
          return Padding(
            padding: const EdgeInsets.only(left: AppPadding.p30,top: 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.15,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  CustomBookImage(
                  bookImage: state.books[index].volumeInfo?.imageLinks?.smallThumbnail,
                ),
                itemCount: state.books.length,
              ),
            ),
          );
        }

        return Skeletonizer(
          enabled: !enable,
          enableSwitchAnimation: true,
          child: Padding(
            padding: const EdgeInsets.only(left: AppPadding.p30,top: 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CustomBookImage(
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
