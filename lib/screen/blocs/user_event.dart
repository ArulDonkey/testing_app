part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetch() = UserEventFetch;
  const factory UserEvent.login(String email, String password) = UserEventLogin;
}
