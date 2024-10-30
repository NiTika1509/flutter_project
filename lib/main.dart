import 'package:flutter/material.dart';
import 'package:flutter_project/core/helpers/dependency_manager.dart';
import 'core/design/application.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  DependencyManager.init();
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Application());
}

