import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:marketplace/pages/auth/onboarding_page.dart';

import '../generated/l10n.dart';

class MarketPlaceApp extends StatelessWidget {
  const MarketPlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      builder: (_) => MaterialApp(
        localizationsDelegates: const [
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: const OnboardingPage(),
      ),
      maximumSize: const Size(475.0, 812.0),
      enabled: kIsWeb,
      backgroundColor: Colors.white,
    );
  }
}
