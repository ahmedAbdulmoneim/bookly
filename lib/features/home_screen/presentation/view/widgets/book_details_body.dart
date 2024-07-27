import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/custom_books_list_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.28,right: MediaQuery.sizeOf(context).width * 0.28,top: 36),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        Text(
          'The Jungle Book',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: AppSize.s5,
        ),
        Text(
          'Rudyard Kipling',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
      ],
    );
  }
}
