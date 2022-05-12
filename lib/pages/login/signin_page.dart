import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:secret_diary/pages/home_page.dart';

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
            DrawingBoard(
              controller: _drawingController,
              background: Container(
                width: 350,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 6,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 60,
              child: RaisedButton(
                child: const Text(
                  '로그인',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
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
            ),
          ],
        ),
      ],
    ));
  }
}
