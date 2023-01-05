// ignore_for_file: prefer_const_constructors

import 'package:whatsapp_unilink/whatsapp_unilink.dart';

// For Flutter applications, you'll most likely want to use
// the url_launcher package.
import 'package:url_launcher/url_launcher.dart';

// ...somewhere in your Flutter app...
launchWhatsAppUri() async {
  final link = WhatsAppUnilink(
    phoneNumber: '+237654149304',
    text: "hello world",
  );
  // Convert the WhatsAppUnilink instance to a Uri.
  // The "launch" method is part of "url_launcher".
  await launchUrl(link.asUri());
}