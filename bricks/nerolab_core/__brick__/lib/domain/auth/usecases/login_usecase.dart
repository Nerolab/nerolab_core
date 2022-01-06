import 'package:dartz/dartz.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/error/failures.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/usecases/usecase.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/data/auth/models/models.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/entities/entities.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/repositories/repository.dart';

class LoginUsecase extends UseCase<LoginEntity, LoginBody> {
  LoginUsecase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, LoginEntity>> call(LoginBody params) {
    return _repository.requestLogin(params);
  }
}
