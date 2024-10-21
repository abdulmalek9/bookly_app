import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 14,
        ),
        const SizedBox(
          width: 7,
        ),
        const Text(
          "4.8",
          style: AppStyles.textStyle14,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2400)",
          style: AppStyles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
