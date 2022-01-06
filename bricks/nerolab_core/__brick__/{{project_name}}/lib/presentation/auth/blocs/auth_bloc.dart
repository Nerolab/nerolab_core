import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/data/auth/models/models.dart';
import 'package:{{#snakeCase}}{{project_name}}{{/snakeCase}}/domain/auth/usecases/usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this.loginUsecase,
  ) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());

      final failureOrLogin = await loginUsecase.call(event.body);
      failureOrLogin.fold(
        (l) => emit(AuthFailure(message: l.message)),
        (r) {
          return emit(AuthSuccess());
        },
      );
    });
  }

  final LoginUsecase loginUsecase;
}
