import 'package:flutter/material.dart';
import 'package:mvp_chat/chats_list_page/chats_list_page.dart';
import 'package:mvp_chat/login_page/login_page.dart';
import 'package:mvp_chat/widgets/auth_form_field.dart';
import 'package:mvp_chat/widgets/big_blue_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/registration_banner.png'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Registration',
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
                  AuthFormField(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    hint: 'Nickname',
                  ),
                  BigBlueButton(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    label: 'Register',
                    onPressed: _on_registerPressed,
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have account?'),
                      TextButton(
                        onPressed: _on_alreadyRegisteredPressed,
                        child: Text('Login'),
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

  void _on_registerPressed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ChatsListPage()),
    );
  }

  void _on_alreadyRegisteredPressed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
