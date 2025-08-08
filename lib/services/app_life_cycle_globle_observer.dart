
import 'package:flutter/widgets.dart';
import '../di/dependency_injection.dart';
import 'deviceAndLocationData/user_location.dart';

class AppLifecycleObserver with WidgetsBindingObserver {
  static final AppLifecycleObserver _instance = AppLifecycleObserver._internal();
  factory AppLifecycleObserver() => _instance;
  AppLifecycleObserver._internal();

  void init() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // App came to foreground
      sl<DeviceAndLocationService>().fetchAndSetLocation();
      print("resume state ");
    }
  }
}
