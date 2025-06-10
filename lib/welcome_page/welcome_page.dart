import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {  },
                      // style: FilledButton.styleFrom(backgroundColor: Colors.blue,),
                      child: Text('Get Started'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
