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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "answerNo": MessageLookupByLibrary.simpleMessage("No"),
        "answerOk": MessageLookupByLibrary.simpleMessage("OK"),
        "answerYes": MessageLookupByLibrary.simpleMessage("Yes"),
        "appName": MessageLookupByLibrary.simpleMessage("Structure Demo"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailRequired":
            MessageLookupByLibrary.simpleMessage("Email is required"),
        "emailValidation": MessageLookupByLibrary.simpleMessage(
            "Email is not in correct format"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorGreaterThanZero": MessageLookupByLibrary.simpleMessage(
            "Input should be greater than zero"),
        "errorInvalidInput":
            MessageLookupByLibrary.simpleMessage("Invalid input"),
        "errorNotMatchPassword": MessageLookupByLibrary.simpleMessage(
            "Password and confirm password does not match"),
        "fieldRequired":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "locale": MessageLookupByLibrary.simpleMessage("en"),
        "noItems": MessageLookupByLibrary.simpleMessage("No items to show"),
        "passwordRequired":
            MessageLookupByLibrary.simpleMessage("Password is required"),
        "passwordValidation": MessageLookupByLibrary.simpleMessage(
            "Password must contain 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special sign: !.#@"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
            "Something went wrong, please try again later."),
        "user": MessageLookupByLibrary.simpleMessage("User")
      };
}
