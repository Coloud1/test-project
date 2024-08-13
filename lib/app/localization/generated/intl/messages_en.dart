// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(minLength) =>
      "This field should be at least ${minLength} characters long";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "apiFailureNoNetwork": MessageLookupByLibrary.simpleMessage(
            "Sorry, we\'re having trouble connecting. Please check your internet connection and try again.\n\nReach out to support if you continue to experience issues."),
        "apiFailureTooManyRequests": MessageLookupByLibrary.simpleMessage(
            "Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues."),
        "apiFailureUnAuthorized": MessageLookupByLibrary.simpleMessage(
            "The username or password you entered is incorrect."),
        "apiFailureUndefined": MessageLookupByLibrary.simpleMessage(
            "Uh oh! Looks like we ran into an issue while processing this request. Please try again.\n\nReach out to support if you continue to experience issues."),
        "appName": MessageLookupByLibrary.simpleMessage("Arch Sample"),
        "firebaseAuthInvalidCredentialsFailure":
            MessageLookupByLibrary.simpleMessage(
                "Could not log in with provided credentials"),
        "generalErrorTitleOopsSomethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Oops! Something went wrong"),
        "generalValidationFieldIsRequiredError":
            MessageLookupByLibrary.simpleMessage("Field is required"),
        "generalValidationLengthError": m0,
        "generalValidationPhoneNumberIsNotValidError":
            MessageLookupByLibrary.simpleMessage("Phone number is invalid"),
        "generalValidationPhoneNumberOtpCodeLengthError":
            MessageLookupByLibrary.simpleMessage(
                "OTP code length should be 6 digits"),
        "homeAppBarTitle": MessageLookupByLibrary.simpleMessage("Home"),
        "homeLogOutButtonLabel":
            MessageLookupByLibrary.simpleMessage("Log out"),
        "homeSetEmailAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Set email"),
        "homeSetEmailTextFieldConfirmPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "homeSetEmailTextFieldEmailLabel":
            MessageLookupByLibrary.simpleMessage("Email"),
        "homeSetEmailTextFieldPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "homeSetEmailVerifyButtonLabel":
            MessageLookupByLibrary.simpleMessage("Verify"),
        "homeSetNameAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Set your Name"),
        "homeSetNameButtonLabel":
            MessageLookupByLibrary.simpleMessage("Set new name"),
        "homeSetNameTextFieldDisplayNameLabel":
            MessageLookupByLibrary.simpleMessage("Display name"),
        "loginAppBarTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "loginAppleIdButtonLabel":
            MessageLookupByLibrary.simpleMessage("Apple Id"),
        "loginCreateAccountButtonLabel":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "loginCredentialsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Login"),
        "loginEmailFieldLabel": MessageLookupByLibrary.simpleMessage("Email"),
        "loginGithubButtonLabel":
            MessageLookupByLibrary.simpleMessage("Github"),
        "loginGoogleButtonLabel":
            MessageLookupByLibrary.simpleMessage("Google"),
        "loginPasswordFieldLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "loginPhoneAppBarTitle": MessageLookupByLibrary.simpleMessage("Phone"),
        "loginPhoneNumberField":
            MessageLookupByLibrary.simpleMessage("Phone number"),
        "loginPhoneNumberOtpTitle":
            MessageLookupByLibrary.simpleMessage("OTP code"),
        "loginPhoneSendSMSButtonLabel":
            MessageLookupByLibrary.simpleMessage("Send SMS"),
        "registrationAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Registration"),
        "registrationConfirmPasswordFieldLabel":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "registrationCreateAccountButtonLabel":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "registrationEmailFieldLabel":
            MessageLookupByLibrary.simpleMessage("Email"),
        "registrationPasswordFieldLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "title": MessageLookupByLibrary.simpleMessage("Arch Sample")
      };
}
