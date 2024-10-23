part of 'newset_book_cubit.dart';

sealed class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

final class NewsetBookInitial extends NewsetBookState {}

final class NewsetBookFailure extends NewsetBookState {
  final String errMessage;

  const NewsetBookFailure(this.errMessage);
}

final class NewsetBookSucsses extends NewsetBookState {
  final List<BookModel> books;

  const NewsetBookSucsses(this.books);
}

final class NewsetBookLoading extends NewsetBookState {}
