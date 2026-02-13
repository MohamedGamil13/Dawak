abstract class LocalStorage {
  Future<void> initLocalStorage();
  Future<bool> isFirstTime();
  Future<void> setIsFirstTimeFalse();
}
