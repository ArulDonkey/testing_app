part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserStateInitial;
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.loaded(List<UserEntity> users) = UserStateLoaded;
  const factory UserState.loggedIn(String token) = UserStateLoggedIn;
  const factory UserState.error(String message) = UserStateError;
  const factory UserState.loggedOut() = UserStateLoggedOut;
}
