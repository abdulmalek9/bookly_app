import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/app_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());

  HomeRepoImpl homeRepo = HomeRepoImpl(AppServices(Dio()));

  fetchFeaturedBook() async {
    emit(FeaturedBookLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBookSucsses(books));
    });
  }
}
