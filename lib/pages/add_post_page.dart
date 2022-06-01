import 'package:flutter/material.dart';
import 'package:secret_diary/widgets/custom_button.dart';
import 'package:secret_diary/widgets/field_widget.dart';

class AddPostPage extends StatelessWidget {
  final titleText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background3.png',
            fit: BoxFit.cover,
            color: Colors.white38,
            colorBlendMode: BlendMode.dstOut,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FieldWidget(
                  labelText: '제목을 입력하세요',
                  controller: titleText,
                ),
                const SizedBox(height: 20),
                FieldWidget(
                  maxLines: 20,
                  controller: titleText,
                ),
                const SizedBox(height: 28),
                CustomButton(
                  width: 290,
                  text: '일기 작성하기',
                  textSize: 20,
                  backgroundColor: const Color(0xFFFFA786),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
