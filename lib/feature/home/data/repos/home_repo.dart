import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
