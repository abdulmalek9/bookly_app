import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepoImpl homeRepo;
  fetchSimilarBook({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSimilarbooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSucsses(similarBooks: books));
    });
  }
}
