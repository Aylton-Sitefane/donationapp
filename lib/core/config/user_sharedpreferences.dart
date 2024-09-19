import 'dart:core';
import 'package:donationapp/core/config/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedpreferences {
  static late SharedPreferences _preferences;

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUserName(String username) async => await _preferences.setString(NAME_KEY, username);
  static String? getUserName() => _preferences.getString(NAME_KEY);
  
  static Future setPhone(String phone) async => await _preferences.setString(PHONE_KEY, phone);
  static String? getPhone() => _preferences.getString(PHONE_KEY);

  static Future setCity(String city) async => await _preferences.setString(CITY_KEY, city);
  static String? getCity() => _preferences.getString(CITY_KEY);

  static Future setState(String state) async => await _preferences.setString(STATE_KEY, state);
  static String? getState() => _preferences.getString(STATE_KEY);

  static Future setPostalCode(String postalCode) async => await _preferences.setString(POSTAL_CODE_KEY, postalCode);
  static String? getPostalCode() => _preferences.getString(POSTAL_CODE_KEY);

  static Future setCountry(String country) async => await _preferences.setString(COUNTRY_KEY, country);
  static String? getCountry() => _preferences.getString(COUNTRY_KEY);

  static Future setStreet(String street) async => await _preferences.setString(STREET_KEY, street);
  static String? getStreet() => _preferences.getString(STREET_KEY);
}