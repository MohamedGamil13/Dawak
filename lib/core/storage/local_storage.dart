abstract class LocalStorage {
  Future<void> initLocalStorage();
  bool isFirstTime();
  Future<void> setIsFirstTimeFalse();
}
