import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get isFirstTime => _prefs.getBool('firstTime') ?? false;

  set isFirstTime(bool isFirstTime) {
    _prefs.setBool('firstTime', isFirstTime);
  }
}
