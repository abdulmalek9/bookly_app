import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/feature/search/presentation/manger/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_circular_progress_indicator.dart';
import '../../../../../core/widget/custom_failure_message.dart';
import '../../../../home/presentation/views/widgets/custom_book_selles_item.dart';

class CustomSearchedBookListview extends StatelessWidget {
  const CustomSearchedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
        builder: (context, state) {
      if (state is SearchedBooksSucsses) {
        return SliverList.builder(
            itemCount: state.searchedBook.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                child: CustomBooksSellesItem(
                  books: state.searchedBook[index],
                ),
              );
            });
      } else if (state is SearchedBooksFailurel) {
        return SliverToBoxAdapter(
          child: CustomFailureMessage(errMessage: state.errMessage),
        );
      } else if (state is SearchedBooksInitial) {
        return SliverToBoxAdapter(
          child: Center(
            child: Text(
              "Search for book..",
              style: AppStyles.textStyle18.copyWith(color: Colors.grey),
            ),
          ),
        );
      } else {
        return const SliverToBoxAdapter(
          child: CustomCircularProgressIndicator(),
        );
      }
    });
  }
}
