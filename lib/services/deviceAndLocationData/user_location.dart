import 'package:bankit_agent/services/notification/notification_service.dart';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../di/dependency_injection.dart';
import 'getDeviceLocation.dart';
import 'package:android_id/android_id.dart';

class DeviceAndLocationService {
  static final DeviceAndLocationService _instance = DeviceAndLocationService._internal();

  factory DeviceAndLocationService() => _instance;

  DeviceAndLocationService._internal();

  DeviceAndLocationModel? userLocation;

  Future<bool> _checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission == LocationPermission.always || permission == LocationPermission.whileInUse;
  }

  Future<void> fetchAndSetLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled || !await _checkPermission()) return;
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.high)
    );
    List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    String address = '';
    if (placeMarks.isNotEmpty) {
      Placemark place = placeMarks.first;
      address = '${place.name}, '
          '${place.street}, '
          '${place.locality}, '
          '${place.subLocality}, '
          '${place.administrativeArea}, '
          '${place.postalCode}, '
          '${place.country}';

      print('Full Address: ${address}');
    }
    List<String> appVersion = await getAppVersion();
    String? imeiNo = await getDeviceId();
    String? ipAddress = await getIPAddressWithDio();
    String? fcmToken = await sl<NotificationService>().getFcmToken();
    userLocation = DeviceAndLocationModel(
      latitude: position.latitude,
      longitude: position.longitude, address: address, appVersion: appVersion[0], imeiNo: imeiNo!, ip_address: ipAddress, buildVersion: appVersion[1], fcmToken: fcmToken!,
    );
  }

  /// Get Ip Address ///
  Future<String> getIPAddressWithDio() async {
    try {
      final dio = Dio();
      final response = await dio.get('https://api.ipify.org?format=json');

      if (response.statusCode == 200) {
        String ip = response.data['ip'];
        print("IP Address: $ip");
        return ip;
      } else {
        print("Failed to get IP address. Status: ${response.statusCode}");
      }
    } catch (e) {
      print("Error occurred while fetching IP address: $e");
    }
    return '';
  }

  /// To Get The Device Id ///
   Future<String?> getDeviceId() async {
    await getAppVersion();
    const androidIdPlugin = AndroidId();
    String? androidId = await androidIdPlugin.getId();

    print("device id${androidId}");
    return androidId;
  }

  ///  App Version ///
  Future<List<String>> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;

    print('App Version: $version');
    print('Build Number: $buildNumber');
    return [version,buildNumber];
  }
}
