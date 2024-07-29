import 'package:flutter/cupertino.dart';

import '../../../../../core/resources/values_manager.dart';
import '../../../../home_screen/presentation/view/widgets/best_seller_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: AppSize.s20,),
      itemBuilder: (context, index) => const BookListViewItem(),
      itemCount: 5,
    );
  }
}
