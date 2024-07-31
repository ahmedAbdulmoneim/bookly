import 'package:bookly/core/api_services/api_service.dart';
import 'package:bookly/core/errors/fialuer.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getRequest(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
      List<BookModel> books = [];
      for (var item in data.data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.getRequest(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data.data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
