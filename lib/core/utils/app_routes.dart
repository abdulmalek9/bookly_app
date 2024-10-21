import 'package:bookly_app/feature/home/presentation/views/books_detailes_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String khomeView = "/homeView";
  static String kbookDetailesView = "/bookDetailesView";
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
        path: kbookDetailesView,
        builder: (context, state) => const BooksDetailesView(),
      ),
    ],
  );
}
