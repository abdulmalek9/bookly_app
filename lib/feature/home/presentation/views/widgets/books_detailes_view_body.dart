import 'package:bookly_app/feature/home/presentation/views/widgets/book_detailes_section.dart';
// import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/booking_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_books_detailes_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';

class BooksDetailesViewBody extends StatelessWidget {
  const BooksDetailesViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomBooksDetailesAppBar(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: BookDetailesSection(
                  bookModel: bookModel,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30.0),
              //   child: BookRating(mainAxisAlignment: MainAxisAlignment.center),
              // ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: BookingAction(),
              ),
              const Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: SimilarBooksSection(),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        )
      ],
    );
  }
}
