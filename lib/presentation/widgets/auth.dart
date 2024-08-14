import 'package:flutter/material.dart';


class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key, required this.title});

  final String title;

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {

  void _moveToSignUp (){
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_home.png'),
                fit: BoxFit.cover
            )
        ),
        child: SizedBox(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600
                      )
                  )
                ],
              ),
              const SizedBox(height: 50),
              const _AuthForm(),
              const SizedBox(height: 80),
              const _LogInButton(),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 320,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('New User?'),
                    TextButton(
                        onPressed: _moveToSignUp,
                        child: const Text('Sign Up')
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class _AuthForm extends StatelessWidget {
  const _AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          SizedBox(
            width: 320,
            child: TextField(
              style: TextStyle(
                fontSize: 24,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 320,
            child: TextField(
                style: TextStyle(
                  fontSize: 24,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )
            ),
          ),
        ],
      ),
    );
  }
}




class _LogInButton extends StatefulWidget {
  const _LogInButton({super.key});

  @override
  State<_LogInButton> createState() => _LogInButtonState();
}

class _LogInButtonState extends State<_LogInButton> {

  void _moveToAuth() {
    final navigator = Navigator.of(context);
    navigator.pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    const buttonStyle = ButtonStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(109, 96, 248, 1)),
      padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(25, 5, 5, 5)),
      textStyle: WidgetStatePropertyAll<TextStyle>(
          TextStyle(
              color: Color.fromRGBO(109, 96, 248, 1),
              fontSize: 16,
              fontWeight: FontWeight.w600
          )
      ),
    );

    return SizedBox(
      width: 200,
      child: ElevatedButton(
          style: buttonStyle,
          onPressed: _moveToAuth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  )
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: const Color.fromRGBO(109, 96, 248, 1),
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        Colors.white)
                ),
              ),
            ],
          )
      ),
    );
  }
}