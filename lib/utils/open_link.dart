import 'package:url_launcher/url_launcher.dart';

Future<void> openLink({required String url}) async {
  const url = '';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
