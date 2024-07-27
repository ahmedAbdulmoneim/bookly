import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: AppSize.s20,),
        itemBuilder: (context, index) => const BestSellerItem(),
      itemCount: 5,
    );
  }
}