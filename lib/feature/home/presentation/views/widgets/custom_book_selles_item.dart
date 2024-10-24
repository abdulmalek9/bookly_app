import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBooksSellesItem extends StatelessWidget {
  const CustomBooksSellesItem({super.key, required this.books});
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kbookDetailesView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 80,
              child: CustomBookImage(
                imageUrl: books.volumeInfo!.imageLinks?.thumbnail ?? "",
              )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    books.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  books.volumeInfo!.authors!.first,
                  style: AppStyles.textStyle14,
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "For Free",
                      style: AppStyles.textStyle14
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    // BookRating(
                    //   rating:books. ,
                    // )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
