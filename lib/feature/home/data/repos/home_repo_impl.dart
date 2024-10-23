// ignore_for_file: unused_local_variable

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/app_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final AppServices appServices;

  HomeRepoImpl(this.appServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      List<BookModel> newestBooks = await appServices.getNewestBooks(
          endsPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");

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

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
