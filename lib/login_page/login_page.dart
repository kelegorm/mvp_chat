import 'package:flutter/material.dart';
import 'package:mvp_chat/chats_list_page/chats_list_page.dart';
import 'package:mvp_chat/registration_page/registration_page.dart';
import 'package:mvp_chat/widgets/auth_form_field.dart';
import 'package:mvp_chat/widgets/big_blue_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/login_banner.png'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 16),
                  AuthFormField(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    hint: 'Email',
                  ),
                  AuthFormField(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    hint: 'Password',
                  ),
                  BigBlueButton(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    label: 'Login',
                    onPressed: _on_loginPressed,
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: _on_notRegisteredPressed,
                        child: Text('Sign up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _on_loginPressed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ChatsListPage()),
    );
  }

  void _on_notRegisteredPressed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage()),
    );
  }
}
