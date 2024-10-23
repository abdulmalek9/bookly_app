import 'package:bookly_app/core/utils/app_services.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceAppLocator() {
  getIt.registerSingleton<AppServices>(AppServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<AppServices>()));
}
