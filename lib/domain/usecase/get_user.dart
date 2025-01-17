import 'package:task2_unictive/domain/entities/user_entity.dart';
import 'package:task2_unictive/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<List<UserEntity>> call() async {
    return await repository.getUser();
  }
}
