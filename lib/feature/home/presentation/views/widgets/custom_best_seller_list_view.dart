import 'package:bookly_app/core/widget/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/widget/custom_failure_message.dart';
import 'package:bookly_app/feature/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_selles_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNewsetBookListView extends StatelessWidget {
  const CustomNewsetBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
        builder: (context, state) {
      if (state is NewsetBookSucsses) {
        return SliverList.builder(
            // physics: const NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.zero,
            itemCount: state.books.length,
            // shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                child: CustomBooksSellesItem(
                  books: state.books[index],
                ),
              );
            });
      } else if (state is NewsetBookFailure) {
        return SliverToBoxAdapter(
          child: CustomFailureMessage(errMessage: state.errMessage),
        );
      } else {
        return const SliverToBoxAdapter(
          child: CustomCircularProgressIndicator(),
        );
      }
    });
  }
}
