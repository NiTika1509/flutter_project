import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/widgets/welcome.dart';
import 'package:flutter_project/presentation/widgets/auth.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const WelcomeWidget(title: 'Welcome to Application'),
        '/auth': (context) => const AuthWidget(title: 'Auth')
      },
      initialRoute: '/',
    );
  }
}