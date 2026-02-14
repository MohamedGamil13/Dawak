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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Smart Pharmacy`
  String get onBorading1solgan1 {
    return Intl.message(
      'Smart Pharmacy',
      name: 'onBorading1solgan1',
      desc: '',
      args: [],
    );
  }

  /// `Smart Care`
  String get onBorading1solgan2 {
    return Intl.message(
      'Smart Care',
      name: 'onBorading1solgan2',
      desc: '',
      args: [],
    );
  }

  /// `Order your medications with ease and get professional medical consultations right from your pocket.`
  String get subTitle {
    return Intl.message(
      'Order your medications with ease and get professional medical consultations right from your pocket.',
      name: 'subTitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get nextButton {
    return Intl.message('Next', name: 'nextButton', desc: '', args: []);
  }

  /// `vitamins`
  String get feature1 {
    return Intl.message('vitamins', name: 'feature1', desc: '', args: []);
  }

  /// `First Aid`
  String get feature2 {
    return Intl.message('First Aid', name: 'feature2', desc: '', args: []);
  }

  /// `Daily Care`
  String get feature3 {
    return Intl.message('Daily Care', name: 'feature3', desc: '', args: []);
  }

  /// `Skin Care`
  String get feature4 {
    return Intl.message('Skin Care', name: 'feature4', desc: '', args: []);
  }

  /// `Search medications...`
  String get searchHint {
    return Intl.message(
      'Search medications...',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Find and order`
  String get onboardingScreen2Text1 {
    return Intl.message(
      'Find and order',
      name: 'onboardingScreen2Text1',
      desc: '',
      args: [],
    );
  }

  /// `Medicines Easily`
  String get onboardingScreen2Text2 {
    return Intl.message(
      'Medicines Easily',
      name: 'onboardingScreen2Text2',
      desc: '',
      args: [],
    );
  }

  /// `Search from over 10,000+ certified medications and healthcare products. Order in seconds and track your delivery.`
  String get onboardingScreen2Text3 {
    return Intl.message(
      'Search from over 10,000+ certified medications and healthcare products. Order in seconds and track your delivery.',
      name: 'onboardingScreen2Text3',
      desc: '',
      args: [],
    );
  }

  /// `Live Support`
  String get consultationChatCardTitle {
    return Intl.message(
      'Live Support',
      name: 'consultationChatCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Hello! How can I help you today?`
  String get consultationChatCardChatMessage {
    return Intl.message(
      'Hello! How can I help you today?',
      name: 'consultationChatCardChatMessage',
      desc: '',
      args: [],
    );
  }

  /// `Type a message...`
  String get consultationChatCardTextHint {
    return Intl.message(
      'Type a message...',
      name: 'consultationChatCardTextHint',
      desc: '',
      args: [],
    );
  }

  /// ` I've uploaded my prescription.`
  String get consultationChatCardMessage2 {
    return Intl.message(
      ' I\'ve uploaded my prescription.',
      name: 'consultationChatCardMessage2',
      desc: '',
      args: [],
    );
  }

  /// `Consult a Pharmacist`
  String get onBoardingScreen3Text1 {
    return Intl.message(
      'Consult a Pharmacist',
      name: 'onBoardingScreen3Text1',
      desc: '',
      args: [],
    );
  }

  /// `  Chat with our licensed pharmacists for medical advice or   quickly upload your prescription to get started.`
  String get onBoardingScreen3Text2 {
    return Intl.message(
      '  Chat with our licensed pharmacists for medical advice or   quickly upload your prescription to get started.',
      name: 'onBoardingScreen3Text2',
      desc: '',
      args: [],
    );
  }

  /// `Reminder`
  String get onBoardingScreen4Text1 {
    return Intl.message(
      'Reminder',
      name: 'onBoardingScreen4Text1',
      desc: '',
      args: [],
    );
  }

  /// `Time for your morning dose`
  String get onBoardingScreen4Text2 {
    return Intl.message(
      'Time for your morning dose',
      name: 'onBoardingScreen4Text2',
      desc: '',
      args: [],
    );
  }

  /// `Refill Out`
  String get onBoardingScreen4Text3 {
    return Intl.message(
      'Refill Out',
      name: 'onBoardingScreen4Text3',
      desc: '',
      args: [],
    );
  }

  /// `Your refill is arriving today`
  String get onBoardingScreen4Text4 {
    return Intl.message(
      'Your refill is arriving today',
      name: 'onBoardingScreen4Text4',
      desc: '',
      args: [],
    );
  }

  /// `Never Miss a Dose`
  String get onBoardingScreen4Text5 {
    return Intl.message(
      'Never Miss a Dose',
      name: 'onBoardingScreen4Text5',
      desc: '',
      args: [],
    );
  }

  /// ` Set automatic reminders for your medications and subscribe to chronic care plans for seamless, doorstep refills. `
  String get onBoardingScreen4Text6 {
    return Intl.message(
      ' Set automatic reminders for your medications and subscribe to chronic care plans for seamless, doorstep refills. ',
      name: 'onBoardingScreen4Text6',
      desc: '',
      args: [],
    );
  }

  /// `Active Subscription`
  String get onBoardingScreen4Text7 {
    return Intl.message(
      'Active Subscription',
      name: 'onBoardingScreen4Text7',
      desc: '',
      args: [],
    );
  }

  /// `Lisinopril 10mg`
  String get onBoardingScreen4Text8 {
    return Intl.message(
      'Lisinopril 10mg',
      name: 'onBoardingScreen4Text8',
      desc: '',
      args: [],
    );
  }

  /// `Daily, 8:00 AM`
  String get onBoardingScreen4Text9 {
    return Intl.message(
      'Daily, 8:00 AM',
      name: 'onBoardingScreen4Text9',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInScreenTitle {
    return Intl.message(
      'Sign In',
      name: 'signInScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get signInScreenText1 {
    return Intl.message(
      'Welcome Back',
      name: 'signInScreenText1',
      desc: '',
      args: [],
    );
  }

  /// `Access your prescriptions and pharmacist consultations`
  String get signInScreenText2 {
    return Intl.message(
      'Access your prescriptions and pharmacist consultations',
      name: 'signInScreenText2',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Enter your Email`
  String get enterEmail {
    return Intl.message(
      'Enter your Email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `ForgetPassword ?`
  String get forgetPassword {
    return Intl.message(
      'ForgetPassword ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message('login', name: 'login', desc: '', args: []);
  }

  /// `Get Started`
  String get signUpTitle {
    return Intl.message('Get Started', name: 'signUpTitle', desc: '', args: []);
  }

  /// `Join our community for faster medicine delivery and expert consultation`
  String get signUpSubtitle {
    return Intl.message(
      'Join our community for faster medicine delivery and expert consultation',
      name: 'signUpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Enter Your Name`
  String get enterName {
    return Intl.message(
      'Enter Your Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `example@email.com`
  String get enterEmailExample {
    return Intl.message(
      'example@email.com',
      name: 'enterEmailExample',
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

  /// `(+20) 01102535450`
  String get enterPhone {
    return Intl.message(
      '(+20) 01102535450',
      name: 'enterPhone',
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

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `I have a chronic condition`
  String get chronicCondition {
    return Intl.message(
      'I have a chronic condition',
      name: 'chronicCondition',
      desc: '',
      args: [],
    );
  }

  /// `This helps us personalize your pharmacy experience and reminders`
  String get chronicConditionSubtitle {
    return Intl.message(
      'This helps us personalize your pharmacy experience and reminders',
      name: 'chronicConditionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgetPasswordHeader {
    return Intl.message(
      'Forgot Password?',
      name: 'forgetPasswordHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated with your account and we'll send you a link to reset your password`
  String get forgetPasswordDescription {
    return Intl.message(
      'Enter the email address associated with your account and we\'ll send you a link to reset your password',
      name: 'forgetPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to reset your password`
  String get enterEmailToReset {
    return Intl.message(
      'Enter your email to reset your password',
      name: 'enterEmailToReset',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get sendResetLink {
    return Intl.message(
      'Send Reset Link',
      name: 'sendResetLink',
      desc: '',
      args: [],
    );
  }

  /// `Remember your password?`
  String get rememberPassword {
    return Intl.message(
      'Remember your password?',
      name: 'rememberPassword',
      desc: '',
      args: [],
    );
  }

  /// `Unlock with Biometric`
  String get biometricTitle {
    return Intl.message(
      'Unlock with Biometric',
      name: 'biometricTitle',
      desc: '',
      args: [],
    );
  }

  /// `Quickly and securely access your prescriptions, medical records, and pharmacist consultations`
  String get biometricDescription {
    return Intl.message(
      'Quickly and securely access your prescriptions, medical records, and pharmacist consultations',
      name: 'biometricDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enable Face ID`
  String get enableFaceId {
    return Intl.message(
      'Enable Face ID',
      name: 'enableFaceId',
      desc: '',
      args: [],
    );
  }

  /// `Use Password Instead`
  String get usePasswordInstead {
    return Intl.message(
      'Use Password Instead',
      name: 'usePasswordInstead',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message('Security', name: 'security', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
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
