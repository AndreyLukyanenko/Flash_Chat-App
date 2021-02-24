import 'package:flutter/material.dart';
import 'package:flash_chat_app/components/input_textfield.dart';
import 'package:flash_chat_app/components/rounded_button.dart';

import '../constans.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputTextField(
              hintText: 'Enter your @email',
              onChanged: (value) {},
            ),
            SizedBox(
              height: 8.0,
            ),
            InputTextField(
              hintText: 'Enter your password',
              onChanged: (value) {},
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              text: 'Login',
              color: kprimaryRoundedButtonColor,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ChatScreen.route,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
