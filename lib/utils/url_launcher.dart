import 'package:url_launcher/url_launcher.dart';

class UrlLauncher{
 static Future urlLaunch(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  static Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'mailto:Support@bankit.in',
  );

  static final Uri phoneLaunchUri = Uri(scheme: 'tel', path: '8142600000');
}