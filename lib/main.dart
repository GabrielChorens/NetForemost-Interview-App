import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:interview_flutter/app.dart';
import 'package:interview_flutter/src/core/di/app_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize key-value store app system
  await GetStorage.init();
  //Dependency injection setup
  configureDependencies();

  runApp(const InterviewFlutterApp());
}
