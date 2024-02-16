// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to our Health &\nFitness Marketplace!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome to our Health &\nFitness Marketplace!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unlock the power of personalization with our AI-driven recommendations tailored to you.`
  String get welcomeTitle {
    return Intl.message(
      'Unlock the power of personalization with our AI-driven recommendations tailored to you.',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continueWithApple {
    return Intl.message(
      'Continue with Apple',
      name: 'continueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Log In with Phone Number`
  String get logInWithPhoneNumber {
    return Intl.message(
      'Log In with Phone Number',
      name: 'logInWithPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number Verification`
  String get phoneNumberVerification {
    return Intl.message(
      'Phone Number Verification',
      name: 'phoneNumberVerification',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number to proceed with login. A verification code will be sent.`
  String get verificationSubtitle {
    return Intl.message(
      'Enter your phone number to proceed with login. A verification code will be sent.',
      name: 'verificationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Full Name`
  String get enterYourFullName {
    return Intl.message(
      'Enter Your Full Name',
      name: 'enterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone Number`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Enter Your Phone Number',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter active phone number`
  String get pleaseEnterActivePhoneNumber {
    return Intl.message(
      'Please enter active phone number',
      name: 'pleaseEnterActivePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `By clicking, I accept the`
  String get acceptTermsAndPrivacy {
    return Intl.message(
      'By clicking, I accept the',
      name: 'acceptTermsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message(
      'Verify Code',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `Check your SMS message. We’ve sent you the code at`
  String get verifyCodeSubtitle {
    return Intl.message(
      'Check your SMS message. We’ve sent you the code at',
      name: 'verifyCodeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Try again in 120sec`
  String get tryAgainIn {
    return Intl.message(
      'Try again in 120sec',
      name: 'tryAgainIn',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get fitness {
    return Intl.message(
      'Fitness',
      name: 'fitness',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Search “Whey Protein”`
  String get searchProtein {
    return Intl.message(
      'Search “Whey Protein”',
      name: 'searchProtein',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Discount & Offers`
  String get discountAndOffers {
    return Intl.message(
      'Discount & Offers',
      name: 'discountAndOffers',
      desc: '',
      args: [],
    );
  }

  /// `AI Assistant`
  String get aiAssistant {
    return Intl.message(
      'AI Assistant',
      name: 'aiAssistant',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
