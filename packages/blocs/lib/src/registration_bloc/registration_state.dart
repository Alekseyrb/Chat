part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.init() = InitRegistrationState;
  const factory RegistrationState.registrationInProgress() = RegistrationInProgressState;
  const factory RegistrationState.registrationSuccess() = RegistrationSuccessState;
}
