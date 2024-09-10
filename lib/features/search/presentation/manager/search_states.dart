import 'package:bookly/features/home_screen/data/models/book_model.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchSuccessState extends SearchStates {
  List<BookModel>  bookModel ;

  SearchSuccessState({required this.bookModel});
}

class SearchFailureState extends SearchStates {
  String errorMessage;

  SearchFailureState({required this.errorMessage});

}
