import 'package:flutter/material.dart';
import 'package:flutter_portfolio/localization/ur_pk.dart';

import 'package:get/get.dart';

import '../utils/app_cache.dart';
import 'en_us.dart';

class AppSupportedLocale {
  static const appSupportedLocale = [];
}

class LanguageCode {
  LanguageCode._();

  static const enLanguage = 'en';
  static const arLanguage = 'ur';
}

class TranslationService extends Translations {
  static Locale? get locale => Get.fallbackLocale;
  static const enLocale = Locale('en', 'US');
  static const arLocale = Locale('ur', 'PK');
  static Locale fallbackLocale = enLocale;

  static Future<void> loadCurrentLocale() async {
    fallbackLocale = AppCache.getAppLocale().contains('en')
        ? TranslationService.enLocale
        : TranslationService.arLocale;
  }

  // in case default Language is Arabic
  // static const fallbackLocale = Locale('ar', 'SA');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': usEnglish,
        'ur_PK': urPK,
      };

  static Future<void> changeLanguage({required Locale locale}) async {
    await Get.updateLocale(locale);
    AppCache.setAppLocale(appLocale: locale.languageCode);
  }
}
