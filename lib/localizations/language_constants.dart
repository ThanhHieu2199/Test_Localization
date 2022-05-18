import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LAGUAGE_CODE = 'languageCode';

//languages code
const String JAPAN = 'ja';
const String ENGLISH = 'en';
const String FRENCH = 'fr';
const String CHINA = 'zh';
Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case JAPAN:
      return Locale(JAPAN, 'ja');
    case ENGLISH:
      return Locale(ENGLISH, 'en');
    case FRENCH:
      return Locale(FRENCH, "fr");
    default:
      return Locale(ENGLISH, 'en');
  }
}