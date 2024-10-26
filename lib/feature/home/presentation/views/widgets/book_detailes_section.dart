import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/model/book_model/book_model.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.18),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: AppStyles.textStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? " ",
          style: AppStyles.textStyle16
              .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
