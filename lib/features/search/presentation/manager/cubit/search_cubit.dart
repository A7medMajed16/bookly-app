import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void> fitchSearchResult({required String searchWord}) async {
    emit(SearchLoading());
    var result = await searchRepo.fitchSearchResult(searchWord: searchWord);

    result.fold((failure) => emit(SearchFailure(failure.errorMessage)), (book) {
      if (book.isNotEmpty) {
        emit(SearchSuccess(book));
      } else {
        emit(SearchNoResult());
      }
    });
  }
}
