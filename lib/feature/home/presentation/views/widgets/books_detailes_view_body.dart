import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/booking_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_books_detailes_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailesViewBody extends StatelessWidget {
  const BooksDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomBooksDetailesAppBar(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.18),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The Jungle Book",
            style: AppStyles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Rudyard Kipkling",
            style: AppStyles.textStyle16
                .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(
            height: 37,
          ),
          const BookingAction()
        ],
      ),
    );
  }
}
