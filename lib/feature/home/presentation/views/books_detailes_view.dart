import 'package:bookly_app/feature/home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/books_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/book_model/book_model.dart';

class BooksDetailesView extends StatefulWidget {
  const BooksDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BooksDetailesView> createState() => _BooksDetailesViewState();
}

class _BooksDetailesViewState extends State<BooksDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBook(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BooksDetailesViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
