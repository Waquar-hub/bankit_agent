import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> init() async {
    await _requestPermission();

    // FCM: handle background + terminated taps
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification tapped: ${message.data}');
      // Navigate or show a dialog based on payload
    });

    // FCM: handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Foreground notification received: ${message.notification?.title}');
    });

    // FCM: get device token
    final token = await _fcm.getToken();
    print('FCM Token: $token');
  }

  Future<String?> getFcmToken() async{
    // FCM: get device token
    final token = await _fcm.getToken();
    print('FCM Token: $token');
    return token;
  }

  Future<void> _requestPermission() async {
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');
  }
}
