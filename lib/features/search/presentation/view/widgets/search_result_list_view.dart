import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/custom_books_list_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/resources/values_manager.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.books});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: AppSize.s20),
      itemBuilder: (context, index) => const CustomBookImage(),
      itemCount: books.length,
    );
  }
}
