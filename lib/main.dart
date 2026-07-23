import 'package:flutter/material.dart';
import 'package:task3/core/bootstrap.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/core/secure/token_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initModule();
  final token = await  getIt<TokenStorage>().getAccessToken();
  runApp(Bootstrap(isloggedIn: token !=null));
}