part of 'searched_books_cubit.dart';

sealed class SearchedBooksState extends Equatable {
  const SearchedBooksState();

  @override
  List<Object> get props => [];
}

final class SearchedBooksInitial extends SearchedBooksState {}

final class SearchedBooksLoading extends SearchedBooksState {}

final class SearchedBooksFailurel extends SearchedBooksState {
  final String errMessage;

  const SearchedBooksFailurel({required this.errMessage});
}

final class SearchedBooksSucsses extends SearchedBooksState {
  final List<BookModel> searchedBook;

  const SearchedBooksSucsses({required this.searchedBook});
}
