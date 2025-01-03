import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sneaker_client/sneaker_client.dart';
import 'package:sneaker_flutter/main.dart';

const accessKey = 'ACCESS_KEY';
const refreshKey = 'REFRESH_KEY';

/// TODO: написать декоратор над AuthenticationKeyManager, который будет менеджить рефреш
class JwtAuthManager extends AuthenticationKeyManager {
  SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _key ??= await PlatformDeviceId.getDeviceId;
  }

  Future<String?> _getAccess() async {
    return _sharedPreferences?.getString(accessKey);
  }

  Future<String?> _getRefresh() async {
    return _sharedPreferences?.getString(refreshKey);
  }

  Future<void> _putAccess(String token) async {
    _sharedPreferences?.setString(accessKey, token);
  }

  Future<void> _putRefresh(String token) async {
    _sharedPreferences?.setString(refreshKey, token);
  }

  String? _key;

  @override
  Future<String?> get() async {
    _key ??= await PlatformDeviceId.getDeviceId;
    return _key;
    // return _getAccess();
  }

  @override
  Future<void> put(String key) async {
    // throw _putAccess(key);
  }

  @override
  Future<void> remove() async {
    // _sharedPreferences?.remove(accessKey);
  }
}
