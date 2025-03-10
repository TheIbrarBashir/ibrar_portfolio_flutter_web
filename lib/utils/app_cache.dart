import 'package:shared_preferences/shared_preferences.dart';

class AppCacheKeys {
  AppCacheKeys._();

  static const appLocaleKey = 'APP_SELECTED_LOCALE';
}

class AppCache {
  static late SharedPreferences instance;

  ///instance for the SharedPreferences
  static Future<void> getInstance() async {
    instance = await SharedPreferences.getInstance();
  }

  /// Set and save the app locale
  static Future<void> setAppLocale({required String appLocale}) =>
      instance.setString(AppCacheKeys.appLocaleKey, appLocale);

  static String getAppLocale() =>
      instance.getString(AppCacheKeys.appLocaleKey) ?? 'en';
}
