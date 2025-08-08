import 'di_exe.dart';

final sl = GetIt.instance;
void setupLocator() {
  // DioService singleton
  sl.registerLazySingleton<DioService>(() => DioService());
  // API Client using DioService
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<DioService>().dio));
  // Repository
  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(sl<ApiClient>()));
  // location service
  sl.registerLazySingleton<DeviceAndLocationService>(() => DeviceAndLocationService());
  /// Auth Bloc Register ///
  sl.registerFactory(() => LoginEmailBloc(repository: sl<AuthRepo>(),));
  sl.registerFactory(() => VerifyOtpBloc(repository: sl<AuthRepo>(),));
  sl.registerFactory(() => ForgotPasswordBloc(repo: sl<AuthRepo>()));
  sl.registerLazySingleton<NotificationService>(() => NotificationService());
}
