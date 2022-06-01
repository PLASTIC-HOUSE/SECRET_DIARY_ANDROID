import 'package:flutter/material.dart';
import 'package:secret_diary/pages/login/signin_page.dart';
import 'package:secret_diary/widgets/custom_button.dart';

import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: '로그인하러 가기',
                  textColor: const Color(0xFFD04861),
                  borderSide:
                      const BorderSide(color: Color(0xFFEE9E05), width: 6),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: '회원가입하러 가기',
                  textColor: const Color(0xFFD04861),
                  borderSide:
                      const BorderSide(color: Color(0xFFEE9E05), width: 6),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
