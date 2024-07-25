import 'package:bookly/features/home_screen/presentation/view/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(),
    );
  }
}
