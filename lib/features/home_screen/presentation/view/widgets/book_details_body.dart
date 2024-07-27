import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/custom_books_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

      ],
    );
  }
}
