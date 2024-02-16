import 'package:flutter/cupertino.dart';

const _boldTextStyle = TextStyle(
  color: Color(0xFF161616),
  fontWeight: FontWeight.bold,
  fontSize: 24,
);

const _mediumTextStyle = TextStyle(
  color: Color(0xFF161616),
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

const _normalTextStyle = TextStyle(
  color: Color(0xFF767676),
  fontWeight: FontWeight.normal,
  fontSize: 16,
);

const _semiBoldTextStyle = TextStyle(
  color: Color(0xFF161616),
  fontWeight: FontWeight.w600,
  fontSize: 24,
);

abstract class AppTextStyles {
  static const onboardingTitleTextStyle = _boldTextStyle;

  static const onboardingSubtitleTextStyle = _normalTextStyle;

  static const authTitle = _mediumTextStyle;

  static TextStyle buttonTitleTextStyle = _mediumTextStyle.copyWith(
    color: const Color(0xFFFFFFFF),
  );

  static const mainAppBarTextStyle = _mediumTextStyle;

  static const verificationTitleTextStyle = _boldTextStyle;

  static const verificationSubtitleTextStyle = _normalTextStyle;

  static TextStyle labelTextFieldStyle = _mediumTextStyle.copyWith(
    color: const Color(0xFF3D3D3D),
  );

  static TextStyle hintTextFieldStyle = _normalTextStyle.copyWith(
    color: const Color(0xFFD9D9D9),
  );

  static TextStyle bottomTextFieldStyle = _normalTextStyle.copyWith(color: const Color(0xFF767676), fontSize: 12);

  static TextStyle acceptTermsAndConditionsTextStyle = _mediumTextStyle.copyWith(
    color: const Color(0xFF707070),
    fontSize: 12,
  );

  static TextStyle termsAndPrivacyPolicyTextStyle = _mediumTextStyle.copyWith(
    color: const Color(0xFFF16038),
    fontSize: 12,
  );

  static TextStyle otpDigitalTextStyle = _mediumTextStyle.copyWith(
    fontSize: 24,
  );

  static TextStyle tryAgainTextStyle = _normalTextStyle.copyWith(
    fontSize: 14,
  );

  static TextStyle unselectedBottomNavigationBarTextStyle = _semiBoldTextStyle.copyWith(
    color: const Color(0xFF767676),
    fontSize: 10,
  );

  static TextStyle selectedBottomNavigationBarTextStyle = _semiBoldTextStyle.copyWith(
    color: const Color(0xFF0033EC),
    fontSize: 10,
  );


  static TextStyle smallCardTextStyle = _boldTextStyle.copyWith(
    fontSize: 18,
  );

  static TextStyle largeCardTitleTextStyle = _boldTextStyle.copyWith(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle largeCardSubtitleTextStyle = _normalTextStyle.copyWith(
    color: const Color(0xFFFFFFFF),
    fontSize: 12,
  );

  static TextStyle productCardSubtitleTextStyle = _normalTextStyle.copyWith(
    color: const Color(0xFF161616),
    fontSize: 12,
  );

  static TextStyle productCardTitleTextStyle = _boldTextStyle.copyWith(
    fontSize: 16,
  );

  static TextStyle productCardPriceTextStyle = _semiBoldTextStyle.copyWith(
    fontSize: 16,
    color: const Color(0xFF0033EC),
  );

  static const cartTitleTextStyle = _boldTextStyle;

}
