import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/books_detailes_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/search/presentation/views/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String khomeView = "/homeView";
  static String kbookDetailesView = "/bookDetailesView";
  static String kbookSearchView = "/bookSearchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kbookSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kbookDetailesView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BooksDetailesView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
