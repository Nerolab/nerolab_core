import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/data/auth/models/models.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/presentation/auth/blocs/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthEvent', () {
    group('LoginEvent', () {
      const loginBody = LoginBody(username: 'username', password: 'password');
      test('return correct props', () {
        expect(const LoginEvent(loginBody).props, [loginBody]);
      });
    });
  });
}
