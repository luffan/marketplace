import 'package:flutter/material.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';
import 'package:marketplace/utils/extenstion/navigator_extension.dart';
import 'package:marketplace/widgets/otp_panel.dart';

import '../../theme/styles.dart';
import '../main_page.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  void _goToHome(BuildContext context) => context.navigator.push(
        MaterialPageRoute(
          builder: (_) => const MainPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            context.localization.phoneNumberVerification,
            style: AppTextStyles.verificationTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            context.localization.verificationSubtitle,
            style: AppTextStyles.verificationSubtitleTextStyle,
          ),
          const SizedBox(height: 24),
          OtpPanel(
            onSubmit: () => _goToHome(context),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.center,
            child: Text(
              context.localization.tryAgainIn,
              style: AppTextStyles.tryAgainTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
