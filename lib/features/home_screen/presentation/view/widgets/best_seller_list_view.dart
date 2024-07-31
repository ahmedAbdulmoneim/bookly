import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p30,
        right: AppPadding.p30,
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => const SizedBox(height: AppSize.s20,),
          itemBuilder: (context, index) => const BookListViewItem(),
        itemCount: 5,
      ),
    );
  }
}
