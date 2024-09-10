import 'package:bookly/core/errors/fialuer.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{

  Future<Either<Failure,List<BookModel>>>search({required String searchKeyWord});
}