import 'package:task3/features/auth/data/models/user_model.dart';
import 'package:task3/features/auth/domain/entities/user_entity.dart';

extension UserModelMapper on UserModel {
  UserEntity toEntity() => UserEntity(
    accessToken: accessToken,
    refreshToken: refreshToken,
    id: id,
    username: username,
    email: email,
    firstName: firstName,
    lastName: lastName,
    gender: gender,
    image: image,
  );
}

extension UserEntityMapper on UserEntity {
  UserModel toModel() => UserModel(
    accessToken: accessToken,
    refreshToken: refreshToken,
    id: id,
    username: username,
    email: email,
    firstName: firstName,
    lastName: lastName,
    gender: gender,
    image: image,
  );
}