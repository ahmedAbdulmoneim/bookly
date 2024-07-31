import '../models/book_model.dart';

abstract class HomeRepo{
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
}