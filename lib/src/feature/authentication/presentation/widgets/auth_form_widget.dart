import 'package:flutter/material.dart';
import 'package:flutter_project/core/design/constants/export.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: primaryColor,
            textCapitalization: TextCapitalization.none,
            style: const TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.normal),
            decoration: InputDecoration(
                fillColor: backgroundColor80,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: enabledBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: primaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: errorBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: errorBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Почта',
                prefixIcon:
                const Icon(Icons.email, color: primaryColor, size: 30),
                filled: true,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 22)),
          ),
          const SizedBox(height: 20),
          TextField(
            cursorColor: primaryColor,
            obscureText: true,
            autocorrect: false,
            enableSuggestions: false,
            textCapitalization: TextCapitalization.none,
            style: const TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.normal),
            decoration: InputDecoration(
                fillColor: backgroundColor80,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: enabledBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: primaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: errorBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: errorBorderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Пароль',
                prefixIcon:
                const Icon(Icons.key, color: primaryColor, size: 30),
                suffix: const Text(
                  'забыли?',
                  style: TextStyle(
                      color: subColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                filled: true,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 22)),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(primaryColor),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 75.0)),
                textStyle: WidgetStatePropertyAll(
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w600))),
            child: const Text(
              'Войти',
              style: TextStyle(
                color: backgroundColor80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
