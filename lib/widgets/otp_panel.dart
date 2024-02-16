import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:marketplace/theme/styles.dart';

class OtpPanel extends StatelessWidget {
  final VoidCallback? onSubmit;

  const OtpPanel({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      textStyle: AppTextStyles.otpDigitalTextStyle,
      fillColor: const Color(0xFFF5F5F5),
      borderRadius: BorderRadius.circular(16),
      borderWidth: 0,
      filled:  true,
      onSubmit: (String verificationCode) {
        onSubmit?.call();
      }, // end onSubmit
    );
  }
}
