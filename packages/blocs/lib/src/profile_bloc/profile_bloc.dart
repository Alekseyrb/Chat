import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'profile_event.dart';

part 'profile_bloc.freezed.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FirestoreRepository firestoreRepository;
  final UpdateDateService updateDateService;

  ProfileBloc(this.firestoreRepository, this.updateDateService)
      : super(const ProfileState.loading()) {
    on<InitProfileEvent>(_init);
    on<GetImageUserProfileEvent>(_getImageUser);
  }

  Future<void> _init(InitProfileEvent event, Emitter<ProfileState> emit) async {
    final result = UserChat(
        id: updateDateService.userId,
        photoUrl: updateDateService.photoUrl,
        nickName: updateDateService.nickname,
        aboutMe: updateDateService.aboutMe);

    emit(const ProfileState.loading());
    emit(ProfileState.init(user: result));
  }

  Future<void> _getImageUser(
      GetImageUserProfileEvent event, Emitter<ProfileState> emit) async {
    await firestoreRepository.getImageUser();

    final result = UserChat(
        id: updateDateService.userId,
        photoUrl: updateDateService.photoUrl,
        nickName: updateDateService.nickname,
        aboutMe: updateDateService.aboutMe);

    emit(const ProfileState.loading());
    emit(ProfileState.init(user: result));
  }
}
