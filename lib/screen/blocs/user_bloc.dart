import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/user_entity.dart';
import 'package:task2_unictive/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const UserState.initial()) {
    on<UserEventFetch>((event, emit) async {
      emit(const UserState.loading());
      try {
        final users = await repository.getUser();
        emit(UserState.loaded(users));
      } catch (e) {
        emit(const UserState.error('Failed to Fetch User'));
      }
    });

    on<UserEventLogin>((event, emit) async {
      emit(const UserState.loading());
      try {
        final token = await repository.login(event.email, event.password);
        emit(UserState.loggedIn(token));
      } catch (e) {
        emit(const UserState.error('Login Failed'));
      }
    });
  }
}
