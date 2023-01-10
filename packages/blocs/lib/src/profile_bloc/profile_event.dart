part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = InitProfileEvent;
  const factory ProfileEvent.getImageUser() = GetImageUserProfileEvent;
  const factory ProfileEvent.updateInfo(String nickname, String aboutMe) = UpdateInfoProfileEvent;
}