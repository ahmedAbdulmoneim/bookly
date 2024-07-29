import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/search/presentation/view/widgets/custom_search_box.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p20, horizontal: AppPadding.p30),
      child: Column(
        children: [CustomSearchBox()],
      ),
    );
  }
}
