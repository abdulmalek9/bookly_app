import 'package:bookly_app/feature/home/presentation/views/widgets/book_detailes_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/booking_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_books_detailes_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailesViewBody extends StatelessWidget {
  const BooksDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomBooksDetailesAppBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: BookDetailesSection(),
              ),
              SizedBox(
                height: 16,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30.0),
              //   child: BookRating(mainAxisAlignment: MainAxisAlignment.center),
              // ),
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: BookingAction(),
              ),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: SimilarBooksSection(),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
