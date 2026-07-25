import 'package:flutter/material.dart';
import 'package:task3/core/bootstrap.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/core/secure/token_storage.dart';
import 'package:task3/features/auth/data/mappers/user_model_mapper.dart';
import 'package:task3/features/auth/presentation/controller/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initModule();
  final token = await getIt<TokenStorage>().getAccessToken();
  final cachedModel = await getIt<TokenStorage>().getUser();

  bool isLoggedIn = false;
  if (token != null && cachedModel != null) {
    getIt<AuthController>().user = cachedModel.toEntity();
    isLoggedIn = true;
  }
  runApp(Bootstrap(isloggedIn: isLoggedIn));
}
// isloggedIn: token !=null)