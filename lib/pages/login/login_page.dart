import 'package:flutter/material.dart';
import 'package:secret_diary/pages/login/signin_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: const Text(
                      '로그인하러 가기',
                      style: TextStyle(color: Color(0xFFD04861), fontSize: 25),
                    ),
                    color: const Color(0xFFFEE3D9),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xFFEE9E05), width: 6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: const Text(
                      '회원가입하러 가기',
                      style: TextStyle(color: Color(0xFFD04861), fontSize: 25),
                    ),
                    color: const Color(0xFFFEE3D9),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xFFEE9E05), width: 6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                  ),
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
