part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init({
    required List<UserChat> listUser,
}) = InitHomeState;
  const factory HomeState.loading() = LoadingHomeState;
}