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
      Map<String, dynamic>? data;
      int rounds = 0;
      List<String> q = [
        'intitle',
        'inauthor',
        'inpublisher',
        'subject',
        'isbn',
        'lccn',
        'oclc'
      ];
      while (data!.isEmpty && rounds < 7) {
        data = await apiService.get(
            endPoint: 'volumes?q=${q[rounds]}:$searchWord');
      }
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
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
