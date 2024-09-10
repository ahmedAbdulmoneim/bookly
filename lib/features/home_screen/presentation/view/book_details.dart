import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/view/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    super.initState();

    // Check if categories is not null and not empty before accessing it
    if (widget.bookModel.volumeInfo?.categories != null &&
        widget.bookModel.volumeInfo!.categories!.isNotEmpty) {
      BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(
          category: widget.bookModel.volumeInfo!.categories![0]);
    } else {
      // Handle case where there are no categories, e.g., fetch a default set of similar books
      debugPrint("No categories available for this book.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
