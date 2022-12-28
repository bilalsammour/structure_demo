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

  /// `en`
  String get locale {
    return Intl.message(
      'en',
      name: 'locale',
      desc: '',
      args: [],
    );
  }

  /// `Structure Demo`
  String get appName {
    return Intl.message(
      'Structure Demo',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get answerOk {
    return Intl.message(
      'OK',
      name: 'answerOk',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get answerYes {
    return Intl.message(
      'Yes',
      name: 'answerYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get answerNo {
    return Intl.message(
      'No',
      name: 'answerNo',
      desc: '',
      args: [],
    );
  }

  /// `No items to show`
  String get noItems {
    return Intl.message(
      'No items to show',
      name: 'noItems',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again later.`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong, please try again later.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid input`
  String get errorInvalidInput {
    return Intl.message(
      'Invalid input',
      name: 'errorInvalidInput',
      desc: '',
      args: [],
    );
  }

  /// `Input should be greater than zero`
  String get errorGreaterThanZero {
    return Intl.message(
      'Input should be greater than zero',
      name: 'errorGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Email is not in correct format`
  String get emailValidation {
    return Intl.message(
      'Email is not in correct format',
      name: 'emailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special sign: !.#@`
  String get passwordValidation {
    return Intl.message(
      'Password must contain 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special sign: !.#@',
      name: 'passwordValidation',
      desc: '',
      args: [],
    );
  }

  /// `Password and confirm password does not match`
  String get errorNotMatchPassword {
    return Intl.message(
      'Password and confirm password does not match',
      name: 'errorNotMatchPassword',
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

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
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
