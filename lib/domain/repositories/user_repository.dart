import 'package:task2_unictive/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUser();
  Future<String> login(String email, String password);
}
