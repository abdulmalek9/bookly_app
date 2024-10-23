import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:dio/dio.dart';

class AppServices {
  final String _baseUrl =
      'https://www.googleapis.com/books/v1/'; // volumes?q=programming
  final Dio dio;

  AppServices(this.dio);
//
  Future<Map<String, dynamic>> getRequestNewestBook(
      {required String endsPoint}) async {
    var request = await dio.get("$_baseUrl$endsPoint");
    return request.data;
  }

  Future<List<BookModel>> getNewestBooks({required String endsPoint}) async {
    Map<String, dynamic> data =
        await getRequestNewestBook(endsPoint: endsPoint);
    List<BookModel> books = [];
    for (var item in data["item"]) {
      books.add(BookModel.fromJson(item));
    }

    return books;
  }
}
