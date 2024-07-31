import '../../../data/models/book_model.dart';

abstract class NewestBooksStates {}

class NewestBooksInitialState extends NewestBooksStates {}

class NewestBooksLoadingState extends NewestBooksStates {}

class NewestBooksSuccessState extends NewestBooksStates {
  List<BookModel> books ;
  NewestBooksSuccessState(this.books);
}

class NewestBooksFailureState extends NewestBooksStates {
  final String errorMessage;
  NewestBooksFailureState(this.errorMessage);
}
