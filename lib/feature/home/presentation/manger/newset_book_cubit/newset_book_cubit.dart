import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/utils/app_services.dart';
import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit() : super(NewsetBookInitial());

  HomeRepoImpl homeRepo = HomeRepoImpl(AppServices(Dio()));

  fetchFeaturedBook() async {
    emit(NewsetBookLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewsetBookFailure(failure.errorMessage));
    }, (books) {
      emit(NewsetBookSucsses(books));
    });
  }
}
