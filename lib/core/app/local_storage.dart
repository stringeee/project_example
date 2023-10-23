// TODO create local storage service
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  final FlutterSecureStorage flutterSecureStorage;

  LocalStorageService({required this.flutterSecureStorage});

  void secureStore({required String value, required String storageKey}) {
    try {
      flutterSecureStorage.write(key: storageKey, value: value);
    } catch (e) {
      throw Exception(e);
    }
  }
}
