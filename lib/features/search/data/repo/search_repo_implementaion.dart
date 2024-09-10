import 'package:bookly/core/api_services/api_service.dart';
import 'package:bookly/core/errors/fialuer.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation extends SearchRepo {
  ApiService apiService;

  SearchRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> search(
      {required String searchKeyWord}) async {
    try {
      var data = await apiService.getRequest(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:$searchKeyWord&key=AIzaSyAjEz5M60bEgT4UvUhNuCMDl4rADhiT3a0');

      // Check if 'items' exists and is not null
      if (data.data != null && data.data["items"] != null) {
        List<BookModel> books = [];

        // Iterate over the items array and create BookModel objects
        for (var item in data.data["items"]) {
          var book = BookModel.fromJson(item);
          books.add(book);
        }

        return right(books);
      } else {
        // Return an empty list if 'items' is null or empty
        return right([]);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
