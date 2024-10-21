import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';

class BookingAction extends StatelessWidget {
  const BookingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            text: "99.9\$",
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            text: "Free Preview",
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            textColor: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
