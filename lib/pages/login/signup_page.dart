import 'package:flutter/material.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:provider/provider.dart';
import 'package:secret_diary/providers/signup_provider.dart';
import 'package:secret_diary/widgets/custom_button.dart';
import 'package:secret_diary/widgets/field_widget.dart';

import '../home_page.dart';

class SignupPage extends StatelessWidget {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  final nameText = TextEditingController();
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
    var provider = Provider.of<SignUpHelper>(context);

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
        PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Nickname',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: FieldWidget(
                    controller: nameText,
                    fillColor: Colors.white,
                    borderColor: Colors.black,
                    radius: 0,
                  ),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  text: '다음',
                  backgroundColor: Colors.white,
                  onPressed: () {
                    _controller.animateTo(MediaQuery.of(context).size.width,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
              ],
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
                Text(
                  provider.getCount.toString() + '/10',
                  style: const TextStyle(
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
                provider.getCount == 10
                    ? CustomButton(
                        text: '회원가입 완료',
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
                      )
                    : CustomButton(
                        text: '다음',
                        backgroundColor: Colors.white,
                        onPressed: () {
                          _drawingController.clear();
                          provider.plus();
                        },
                      )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
