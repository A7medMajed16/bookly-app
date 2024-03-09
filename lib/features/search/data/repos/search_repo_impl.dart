import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fitchSearchResult(
      {required String searchWord}) async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=intitle:$searchWord');

      List<BookModel> books = [];
      if (data['totalItems'] != 0) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
