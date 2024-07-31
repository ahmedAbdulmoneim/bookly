import 'package:bookly/core/api_services/api_service.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServicLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(getIt.get<ApiService>())
  );
}