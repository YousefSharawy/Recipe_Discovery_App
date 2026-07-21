import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> login({required String userName, required String password});
}
