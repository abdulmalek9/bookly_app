import 'package:bookly_app/feature/home/presentation/manger/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_circular_progress_indicator.dart';
import '../../../../../core/widget/custom_failure_message.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomListViewItem(),
                  );
                }),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomFailureMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
