import 'package:bankit_agent/utils/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app_colors.dart';
import 'core/app_text_style.dart';
import 'di/dependency_injection.dart';
import 'features/auth/loginWithEmail/bloc/loginWithEmailBloc/bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

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
