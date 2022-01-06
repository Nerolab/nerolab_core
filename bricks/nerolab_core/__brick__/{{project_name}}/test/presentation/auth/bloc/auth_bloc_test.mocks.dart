// Mocks generated by Mockito 5.0.15 from annotations
// in {{#snakeCase}}{{project_name}}{{/snakeCase}}/test/presentation/auth/bloc/auth_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/core/error/failures.dart'
    as _i5;
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/data/auth/models/models.dart'
    as _i7;
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/entities/entities.dart'
    as _i6;
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/usecases/login_usecase.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [LoginUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUsecase extends _i1.Mock implements _i3.LoginUsecase {
  MockLoginUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.LoginEntity>> call(
          _i7.LoginBody? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.LoginEntity>>.value(
              _FakeEither_0<_i5.Failure, _i6.LoginEntity>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.LoginEntity>>);
  @override
  String toString() => super.toString();
}
