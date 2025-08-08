import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/bloc.dart';
import 'package:bankit_agent/core/app_colors.dart';
import 'package:bankit_agent/core/app_text_style.dart';
import 'package:bankit_agent/services/app_life_cycle_globle_observer.dart';
import 'package:bankit_agent/services/deviceAndLocationData/user_location.dart';
import 'package:bankit_agent/services/notification/notification_service.dart';
import 'package:bankit_agent/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  await sl<NotificationService>().init();
  AppLifecycleObserver().init();
  await sl<DeviceAndLocationService>().fetchAndSetLocation();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => sl<LoginEmailBloc>()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            title: 'BANKIT Agent',
            theme: ThemeData(
              iconTheme: IconThemeData(color: Colors.white),
              checkboxTheme: CheckboxThemeData(
                fillColor: MaterialStateProperty.all(Colors.blue),
                checkColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(
                    Colors.blue.withOpacity(0.2)), // ripple effect
              ),
              appBarTheme: AppBarTheme(
                  titleTextStyle: AppStyle.h4,
                  color: AppColors.base
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.base),
            ),
          ),
        );
      },
    );
  }
}
