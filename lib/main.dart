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
import 'app.dart';
import 'di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  await sl<NotificationService>().init();
  AppLifecycleObserver().init();
  await sl<DeviceAndLocationService>().fetchAndSetLocation();
  runApp( App());
}
