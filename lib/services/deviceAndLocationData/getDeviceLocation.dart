class DeviceAndLocationModel {
  final double latitude;
  final double longitude;
  final String address;
  final String imeiNo;
  final String appVersion;
  final String buildVersion;
  final String ip_address;
  final String fcmToken;

  DeviceAndLocationModel({required this.latitude, required this.longitude,required this.address,required this.appVersion,required this.imeiNo,required this.ip_address,required this.buildVersion,required this.fcmToken});
}
