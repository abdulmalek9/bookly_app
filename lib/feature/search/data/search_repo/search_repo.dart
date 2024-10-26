import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../home/data/model/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchbooksBySearch(
      {required String category});
}
