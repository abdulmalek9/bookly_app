import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBooksSellesItem extends StatelessWidget {
  const CustomBooksSellesItem({super.key});

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
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(Assets.imagesTestImage),
                  ),
                ),
              ),
            ),
          ),
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
                    "Harry Boter bla Bla Bla Bla",
                    maxLines: 2,
                    style: AppStyles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "J.k. Rowling",
                  style: AppStyles.textStyle14,
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "99.9 \$",
                      style: AppStyles.textStyle14
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const BookRating()
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
