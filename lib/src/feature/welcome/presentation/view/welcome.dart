import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/core/route/router.gr.dart';
import 'package:flutter_project/core/design/constants/colors.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  final String title = 'Welcome to my Application';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: backgroundColor80,
          image: DecorationImage(
              image: AssetImage('assets/images/background_image.jpg'),
              fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            const SizedBox(
              width: 350,
              child: Text('ЛОГОТИП'),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => AutoRouter.of(context).push(const AuthRoute()),
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(primaryColor),
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 75.0)),
                  textStyle: WidgetStatePropertyAll(
                      TextStyle(fontSize: 22, fontWeight: FontWeight.w600))),
              child: const Text(
                'Авторизация',
                style: TextStyle(
                  color: backgroundColor80,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

//
// class _LogInButton extends StatefulWidget {
//   const _LogInButton({super.key});
//
//   @override
//   State<_LogInButton> createState() => _LogInButtonState();
// }
//
// class _LogInButtonState extends State<_LogInButton> {
//
//   void _moveToAuth (){
//     final navigator = Navigator.of(context);
//     navigator.pushNamed('/auth');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     const buttonStyle = ButtonStyle(
//       backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
//       padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(25, 5, 5, 5)),
//       textStyle: WidgetStatePropertyAll<TextStyle>(
//           TextStyle(
//               color: Color.fromRGBO(109, 96, 248, 1),
//               fontSize: 16,
//               fontWeight: FontWeight.w600
//           )
//       ),
//     );
//
//     return ElevatedButton(
//         style: buttonStyle,
//         onPressed: _moveToAuth,
//         child: SizedBox(
//           width: 200,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               const Text(
//                   'Log in',
//                   style: TextStyle(
//                       color: Color.fromRGBO(109, 96, 248, 1),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600
//                   )
//               ),
//               IconButton(
//                 icon: const Icon(Icons.arrow_forward_ios),
//                 color: Colors.white,
//                 onPressed: _moveToAuth,
//                 style: const ButtonStyle(
//                     backgroundColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(109, 96, 248, 1))
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
