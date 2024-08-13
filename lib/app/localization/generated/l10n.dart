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

  /// `Arch Sample`
  String get appName {
    return Intl.message(
      'Arch Sample',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Arch Sample`
  String get title {
    return Intl.message(
      'Arch Sample',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, we're having trouble connecting. Please check your internet connection and try again.\n\nReach out to support if you continue to experience issues.`
  String get apiFailureNoNetwork {
    return Intl.message(
      'Sorry, we\'re having trouble connecting. Please check your internet connection and try again.\n\nReach out to support if you continue to experience issues.',
      name: 'apiFailureNoNetwork',
      desc: '',
      args: [],
    );
  }

  /// `The username or password you entered is incorrect.`
  String get apiFailureUnAuthorized {
    return Intl.message(
      'The username or password you entered is incorrect.',
      name: 'apiFailureUnAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues.`
  String get apiFailureTooManyRequests {
    return Intl.message(
      'Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues.',
      name: 'apiFailureTooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues.`
  String get apiFailureUndefined {
    return Intl.message(
      'Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues.',
      name: 'apiFailureUndefined',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginAppBarTitle {
    return Intl.message(
      'Login',
      name: 'loginAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginEmailFieldLabel {
    return Intl.message(
      'Email',
      name: 'loginEmailFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPasswordFieldLabel {
    return Intl.message(
      'Password',
      name: 'loginPasswordFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginCredentialsButtonLabel {
    return Intl.message(
      'Login',
      name: 'loginCredentialsButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get loginCreateAccountButtonLabel {
    return Intl.message(
      'Create account',
      name: 'loginCreateAccountButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Apple Id`
  String get loginAppleIdButtonLabel {
    return Intl.message(
      'Apple Id',
      name: 'loginAppleIdButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get loginGoogleButtonLabel {
    return Intl.message(
      'Google',
      name: 'loginGoogleButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Github`
  String get loginGithubButtonLabel {
    return Intl.message(
      'Github',
      name: 'loginGithubButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get loginPhoneAppBarTitle {
    return Intl.message(
      'Phone',
      name: 'loginPhoneAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get loginPhoneNumberField {
    return Intl.message(
      'Phone number',
      name: 'loginPhoneNumberField',
      desc: '',
      args: [],
    );
  }

  /// `Send SMS`
  String get loginPhoneSendSMSButtonLabel {
    return Intl.message(
      'Send SMS',
      name: 'loginPhoneSendSMSButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `OTP code`
  String get loginPhoneNumberOtpTitle {
    return Intl.message(
      'OTP code',
      name: 'loginPhoneNumberOtpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registrationAppBarTitle {
    return Intl.message(
      'Registration',
      name: 'registrationAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get registrationEmailFieldLabel {
    return Intl.message(
      'Email',
      name: 'registrationEmailFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get registrationPasswordFieldLabel {
    return Intl.message(
      'Password',
      name: 'registrationPasswordFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get registrationConfirmPasswordFieldLabel {
    return Intl.message(
      'Confirm password',
      name: 'registrationConfirmPasswordFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get registrationCreateAccountButtonLabel {
    return Intl.message(
      'Create account',
      name: 'registrationCreateAccountButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Set email`
  String get homeSetEmailAppBarTitle {
    return Intl.message(
      'Set email',
      name: 'homeSetEmailAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get homeSetEmailTextFieldEmailLabel {
    return Intl.message(
      'Email',
      name: 'homeSetEmailTextFieldEmailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get homeSetEmailTextFieldPasswordLabel {
    return Intl.message(
      'Password',
      name: 'homeSetEmailTextFieldPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get homeSetEmailTextFieldConfirmPasswordLabel {
    return Intl.message(
      'Confirm password',
      name: 'homeSetEmailTextFieldConfirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get homeSetEmailVerifyButtonLabel {
    return Intl.message(
      'Verify',
      name: 'homeSetEmailVerifyButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Set your Name`
  String get homeSetNameAppBarTitle {
    return Intl.message(
      'Set your Name',
      name: 'homeSetNameAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Display name`
  String get homeSetNameTextFieldDisplayNameLabel {
    return Intl.message(
      'Display name',
      name: 'homeSetNameTextFieldDisplayNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Set new name`
  String get homeSetNameButtonLabel {
    return Intl.message(
      'Set new name',
      name: 'homeSetNameButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeAppBarTitle {
    return Intl.message(
      'Home',
      name: 'homeAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get homeLogOutButtonLabel {
    return Intl.message(
      'Log out',
      name: 'homeLogOutButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Could not log in with provided credentials`
  String get firebaseAuthInvalidCredentialsFailure {
    return Intl.message(
      'Could not log in with provided credentials',
      name: 'firebaseAuthInvalidCredentialsFailure',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Something went wrong`
  String get generalErrorTitleOopsSomethingWentWrong {
    return Intl.message(
      'Oops! Something went wrong',
      name: 'generalErrorTitleOopsSomethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get generalValidationFieldIsRequiredError {
    return Intl.message(
      'Field is required',
      name: 'generalValidationFieldIsRequiredError',
      desc: '',
      args: [],
    );
  }

  /// `OTP code length should be 6 digits`
  String get generalValidationPhoneNumberOtpCodeLengthError {
    return Intl.message(
      'OTP code length should be 6 digits',
      name: 'generalValidationPhoneNumberOtpCodeLengthError',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is invalid`
  String get generalValidationPhoneNumberIsNotValidError {
    return Intl.message(
      'Phone number is invalid',
      name: 'generalValidationPhoneNumberIsNotValidError',
      desc: '',
      args: [],
    );
  }

  /// `This field should be at least {minLength} characters long`
  String generalValidationLengthError(int minLength) {
    return Intl.message(
      'This field should be at least $minLength characters long',
      name: 'generalValidationLengthError',
      desc: '',
      args: [minLength],
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
