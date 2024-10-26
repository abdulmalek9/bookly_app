import 'package:bookly_app/core/widget/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/widget/custom_failure_message.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.similarBooks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl: state.similarBooks[index].volumeInfo?.imageLinks
                              ?.thumbnail ??
                          "",
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomFailureMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
