import 'package:flutter/material.dart';


class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(109, 96, 248, 1),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_home.png'),
              fit: BoxFit.cover
          )
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    'to',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                  Text(
                      'Application',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  ),
                  SizedBox(height: 150),
                  _LogInButton()
                ],
            )
          ],
        ),
      )
    );
  }
}


class _LogInButton extends StatefulWidget {
  const _LogInButton({super.key});

  @override
  State<_LogInButton> createState() => _LogInButtonState();
}

class _LogInButtonState extends State<_LogInButton> {

  void _moveToAuth (){
    final navigator = Navigator.of(context);
    navigator.pushNamed('/auth');
  }

  @override
  Widget build(BuildContext context) {

    const buttonStyle = ButtonStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
      padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(25, 5, 5, 5)),
      textStyle: WidgetStatePropertyAll<TextStyle>(
          TextStyle(
              color: Color.fromRGBO(109, 96, 248, 1),
              fontSize: 16,
              fontWeight: FontWeight.w600
          )
      ),
    );

    return ElevatedButton(
        style: buttonStyle,
        onPressed: _moveToAuth,
        child: SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                  'Log in',
                  style: TextStyle(
                      color: Color.fromRGBO(109, 96, 248, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  )
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: _moveToAuth,
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(109, 96, 248, 1))
                ),
              ),
            ],
          ),
        )
    );
  }
}
