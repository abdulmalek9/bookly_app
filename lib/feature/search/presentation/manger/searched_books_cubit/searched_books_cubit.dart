import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/search/data/search_repo/search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit(this.searchRepoImpl) : super(SearchedBooksInitial());

  final SearchRepoImpl searchRepoImpl;

  fetchSearchedBook({required String category}) async {
    emit(SearchedBooksLoading());

    var result = await searchRepoImpl.fetchbooksBySearch(category: category);

    result.fold((failure) {
      emit(SearchedBooksFailurel(errMessage: failure.errorMessage));
    }, (searchedBook) {
      emit(SearchedBooksSucsses(searchedBook: searchedBook));
    });
  }
}
