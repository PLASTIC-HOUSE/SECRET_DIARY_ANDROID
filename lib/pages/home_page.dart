import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFA786),
          title: const Text(
            '콩순이의 일기장',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add_outlined,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/background3.png',
              fit: BoxFit.fitHeight,
              color: Colors.white38,
              colorBlendMode: BlendMode.dstOut,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ],
        ));
  }
}
