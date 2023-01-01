import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:repositories/repositories.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepository authRepository;

  RegistrationBloc(this.authRepository) : super(const RegistrationState.init()) {
    on<RegistrationEvent>((_registration));
  }

  Future<void> _registration(RegistrationEvent event, Emitter<RegistrationState> emit) async {
    emit(const RegistrationState.registrationInProgress());
    final result = await authRepository.registration(event.email, event.password);
    if (result != null) {
      emit(const RegistrationState.registrationSuccess());
    }
  }
}
