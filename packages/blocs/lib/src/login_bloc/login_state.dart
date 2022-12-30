part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.init() = InitlLogInState;
  const factory LoginState.logInSuccess() = LogInSuccessState;
  const factory LoginState.logInFailure() = LogInFailureState;
  const factory LoginState.logInInProgress() = LogInInProgress;
}