import 'package:bookly/features/home_screen/data/models/book_model.dart';

abstract class SimilarBooksStates {}

class SimilarBooksInitialState extends SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksSuccessState extends SimilarBooksStates {
  List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksFailureState extends SimilarBooksStates {
  String errorMessage;

  SimilarBooksFailureState(this.errorMessage);
}
