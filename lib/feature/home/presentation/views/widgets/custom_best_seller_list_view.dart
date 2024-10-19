import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_selles_item.dart';
import 'package:flutter/material.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
            child: CustomBooksSellesItem(),
          );
        });
  }
}
