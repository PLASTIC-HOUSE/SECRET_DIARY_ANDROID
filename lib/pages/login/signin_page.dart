import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:secret_diary/pages/home_page.dart';
import 'package:secret_diary/widgets/custom_button.dart';

class SignInPage extends StatelessWidget {
  final DrawingController _drawingController = DrawingController(
    config: DrawConfig(
      color: Colors.black,
      paintType: PaintType.simpleLine,
      thickness: 6.0,
      angle: 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/background2.png',
          fit: BoxFit.fitHeight,
          color: Colors.grey.withOpacity(0.5),
          colorBlendMode: BlendMode.modulate,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign to Sign In',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 280,
              child: DrawingBoard(
                controller: _drawingController,
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 6,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: '로그인',
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ));
  }
}
