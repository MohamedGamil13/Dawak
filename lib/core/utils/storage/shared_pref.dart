import 'package:dawak/core/constants/app_keys.dart';
import 'package:dawak/core/utils/storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends LocalStorage {
  late SharedPreferences _prefs;
  @override
  Future<void> initLocalStorage() async {
    _prefs = await SharedPreferences.getInstance();
    if (!_prefs.containsKey(AppKeys.firstTimeKey)) {
      await _prefs.setBool(AppKeys.firstTimeKey, true);
    }
  }

  @override
  bool isFirstTime() {
    return _prefs.getBool(AppKeys.firstTimeKey) ?? true;
  }

  @override
  Future<void> setIsFirstTimeFalse() async {
    await _prefs.setBool(AppKeys.firstTimeKey, false);
  }
}
