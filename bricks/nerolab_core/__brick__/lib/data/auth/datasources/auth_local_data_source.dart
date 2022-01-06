import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/constants/key_constants.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/utils/services/shared_prefs.dart';

abstract class AuthLocalDataSource {
  Future<void> saveToken(String token);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl(this.sharedPrefs);

  final SharedPrefs sharedPrefs;

  @override
  Future<void> saveToken(String token) {
    return sharedPrefs.putString(KeyConstants.keyAccessToken, token);
  }
}
