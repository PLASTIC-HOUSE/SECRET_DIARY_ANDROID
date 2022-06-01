import 'dart:typed_data';

import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final Uint8List image;

  const TestPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Image.memory(image),
        ],
      ),
    );
  }
}
