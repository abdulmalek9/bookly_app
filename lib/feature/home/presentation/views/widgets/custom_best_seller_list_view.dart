import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_selles_item.dart';
import 'package:flutter/material.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        // physics: const NeverScrollableScrollPhysics(),
        // padding: EdgeInsets.zero,
        itemCount: 40,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
            child: CustomBooksSellesItem(),
          );
        });
  }
}
