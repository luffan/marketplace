import 'package:flutter/material.dart';
import 'package:marketplace/pages/auth/create_account_page.dart';
import 'package:marketplace/resources/app_asset_image.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';
import 'package:marketplace/utils/extenstion/navigator_extension.dart';
import 'package:marketplace/widgets/app_button.dart';
import 'package:marketplace/widgets/app_outlined_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  void _goToCreateAccount(BuildContext context) => context.navigator.push(
        MaterialPageRoute(
          builder: (_) => const CreateAccountPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  AppAssetImage.preview,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                context.localization.welcomeTitle,
                style: AppTextStyles.onboardingTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                context.localization.welcomeMessage,
                style: AppTextStyles.onboardingSubtitleTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 56),
              AppOutlinedButton(
                text: context.localization.continueWithGoogle,
                onTap: () => _goToCreateAccount(context),
                icon: AppAssetImage.google,
              ),
              const SizedBox(height: 16),
              AppOutlinedButton(
                text: context.localization.continueWithApple,
                onTap: () => _goToCreateAccount(context),
                icon: AppAssetImage.apple,
              ),
              const SizedBox(height: 16),
              AppOutlinedButton(
                text: context.localization.logInWithPhoneNumber,
                onTap: () => _goToCreateAccount(context),
              ),
              const SizedBox(height: 16),
              AppButton(
                text: context.localization.createAccount,
                onTap: () => _goToCreateAccount(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
