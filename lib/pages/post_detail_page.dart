import 'package:flutter/material.dart';
import 'package:secret_diary/models/post_model.dart';

class PostDetailPage extends StatelessWidget {
  final Value data;

  const PostDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background3.png',
            fit: BoxFit.fitHeight,
            color: Colors.white38,
            colorBlendMode: BlendMode.dstOut,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                  child: Text(
                    data.date!,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                _coverWidget(
                  height: 80,
                  text: data.title!,
                  padding: const EdgeInsets.fromLTRB(35, 19, 35, 10),
                  textSize: 29,
                ),
                const SizedBox(height: 20),
                _coverWidget(
                  height: 400,
                  text: data.content!,
                  padding: const EdgeInsets.fromLTRB(20, 19, 20, 10),
                  textSize: 23,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _coverWidget(
      {required double height,
      required String text,
      required EdgeInsetsGeometry padding,
      required double textSize}) {
    return Container(
      height: height,
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: const Color(0xFFFEE3D9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 6,
          color: const Color(0xFFEE9E05),
        ),
      ),
      child: Text(text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
