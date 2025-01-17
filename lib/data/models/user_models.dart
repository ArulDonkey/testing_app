import 'package:task2_unictive/domain/entities/user_entity.dart';

class UserModels extends UserEntity {
  const UserModels({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) : super(
          id: id,
          email: email,
          firstName: firstName,
          lastName: lastName,
          avatar: avatar,
        );

  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
      id: json['id'] ?? 0,
      email: json['email'] ?? 'Unknown Email',
      firstName: json['first_name'] ?? 'Unknown First Name',
      lastName: json['last_name'] ?? 'Unknown Last Name',
      avatar: json['avatar'] ?? '',
    );
  }
}
