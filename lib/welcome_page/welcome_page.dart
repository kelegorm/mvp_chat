import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:mvp_chat/registration_page/registration_page.dart';
import 'package:mvp_chat/widgets/big_blue_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/welcome_banner.png'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Connect with friends',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Chat with friends and family, share moments and stay connected.',
                    textAlign: TextAlign.center,
                  ),
                  Expanded(child: Container()),
                  BigBlueButton(
                    label: 'Get Started',
                    onPressed: _on_getStartedPressed,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _on_getStartedPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage()),
    );
  }
}
