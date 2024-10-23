import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());

  final HomeRepoImpl homeRepo;

  fetchNewestBooks() async {
    emit(NewsetBookLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewsetBookFailure(failure.errorMessage));
    }, (books) {
      emit(NewsetBookSucsses(books));
    });
  }
}
