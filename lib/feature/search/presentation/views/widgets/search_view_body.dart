import 'package:bookly_app/feature/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:bookly_app/feature/search/presentation/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Column(
              children: [
                CustomSearchField(),
              ],
            ),
          ),
        ),
        CustomBestSellerListView(),
      ],
    );
  }
}
