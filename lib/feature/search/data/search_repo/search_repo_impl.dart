import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/app_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/search/data/search_repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final AppServices appServices;

  SearchRepoImpl(this.appServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchbooksBySearch(
      {required String category}) async {
    try {
      List<BookModel> newestBooks = await appServices.getNewestBooks(
          endsPoint: "volumes?Filtering=free-ebooks&q=$category");

      return right(newestBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
