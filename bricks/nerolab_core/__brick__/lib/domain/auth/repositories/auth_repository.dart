import 'package:dartz/dartz.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/error/failures.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/data/auth/models/models.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/entities/entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginEntity>> requestLogin(LoginBody body);
}
