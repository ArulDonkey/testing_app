import 'package:dio/dio.dart';
import 'package:task2_unictive/data/models/user_models.dart';
import 'package:task2_unictive/domain/entities/user_entity.dart';
import 'package:task2_unictive/domain/repositories/user_repository.dart';

class UserRepositoriesImplement implements UserRepository {
  final Dio dio;

  UserRepositoriesImplement(this.dio);

  @override
  Future<List<UserEntity>> getUser() async {
    try {
      final response = await dio.get('https://reqres.in/api/users');
      print('Response: ${response.data}');
      final List users = response.data['data'];
      return users.map((user) => UserModels.fromJson(user)).toList();
    } catch (e) {
      print('Error while fetching users: $e');
      rethrow;
    }
  }

  @override
  Future<String> login(String email, String password) async {
    final response = await dio.post(
      'https://reqres.in/api/login',
      data: {'email': email, 'password': password},
    );
    return response.data['token'];
    // TODO: implement login
  }
}
