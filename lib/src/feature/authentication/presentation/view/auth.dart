import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/core/design/constants/export.dart';
import 'package:flutter_project/src/feature/authentication/presentation/widgets/export.dart';


@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  final String title = 'Авторизация';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  width: 250,
                  child: logotypeApplication,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const AuthForm(),
            const SizedBox(height: 60),
            Row(
              children: [
                const Text(
                  'Вы тут впервые?',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: subColor,
                          color: subColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
