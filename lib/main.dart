import 'package:flutter/material.dart';
import 'package:task3/core/bootstrap.dart';
import 'package:task3/core/injection.dart';

void main() async{
  await initModule();
  runApp(const Bootstrap());
}