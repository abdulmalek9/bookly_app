import 'package:bookly_app/constant.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CustomAppBar(),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHpadding - 8),
          child: CustomBooksListView(),
        ),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
