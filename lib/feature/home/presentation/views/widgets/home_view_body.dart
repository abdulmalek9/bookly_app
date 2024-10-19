import 'package:bookly_app/constant.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              CustomAppBar(),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: EdgeInsets.only(left: kHpadding - 8),
                child: CustomBooksListView(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHpadding),
                child: Text(
                  "Best Seller",
                  style: AppStyles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: CustomBestSellerListView(),
        ),
      ],
    );
  }
}
