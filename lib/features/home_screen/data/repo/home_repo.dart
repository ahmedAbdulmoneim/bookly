import 'package:bookly/core/errors/fialuer.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class HomeRepo{
  // using either to return more than data type

  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}