import '../../../data/models/book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksFailureState extends FeaturedBooksStates {
  final String errorMessage;

  FeaturedBooksFailureState(this.errorMessage);
}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccessState(this.books);
}
