part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.init({required UserChat user}) = InitProfileState;
  const factory ProfileState.loading() = LoadingProfileState;
}