import 'package:flutter/material.dart';
import 'package:marketplace/pages/auth/verification_page.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';
import 'package:marketplace/utils/extenstion/navigator_extension.dart';
import 'package:marketplace/widgets/app_button.dart';
import 'package:marketplace/widgets/app_text_field.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  void _goToVerification(BuildContext context) => context.navigator.push(
        MaterialPageRoute(
          builder: (_) => const VerificationPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          context.localization.createAccount,
          style: AppTextStyles.mainAppBarTextStyle,
        ),
      ),
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
          AppTextField(
            label: context.localization.name,
            hintText: context.localization.enterYourFullName,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: context.localization.phoneNumber,
            hintText: context.localization.enterYourFullName,
            bottomText: context.localization.pleaseEnterActivePhoneNumber,
          ),
          const SizedBox(height: 24),
          AppButton(
            text: context.localization.continueText,
            onTap: () => _goToVerification(context),
          ),
          const SizedBox(height: 16),
          _termsAndConditions(context),
        ],
      ),
    );
  }

  Widget _termsAndConditions(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: context.localization.acceptTermsAndPrivacy,
        style: AppTextStyles.acceptTermsAndConditionsTextStyle,
        children: [
          TextSpan(
            text: context.localization.termsAndConditions,
            style: AppTextStyles.termsAndPrivacyPolicyTextStyle,
          ),
          TextSpan(
            text: ' ${context.localization.and} ',
          ),
          TextSpan(
            text: context.localization.privacyPolicy,
            style: AppTextStyles.termsAndPrivacyPolicyTextStyle,
          ),
        ],
      ),
    );
  }
}
