import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:repositories/repositories.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc(this.authRepository) : super(const LoginState.init()) {
    on<LogInEvent>(_logIn);
  }

  Future<void> _logIn(
    LogInEvent event,
    Emitter<LoginState> emit,
  ) async {
    final result = await authRepository.singIn(event.email, event.password);

    if (result != null) {
      emit(const LoginState.logInSuccess());
    }
  }
}
