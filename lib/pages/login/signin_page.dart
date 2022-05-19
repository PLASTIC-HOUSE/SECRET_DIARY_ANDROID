import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:secret_diary/pages/home_page.dart';
import 'package:secret_diary/widgets/custom_button.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignInPage extends StatelessWidget {
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
              Container(
                child: SfSignaturePad(
                  key: _signaturePadKey,
                  minimumStrokeWidth: 3,
                  maximumStrokeWidth: 3,
                  strokeColor: Colors.black,
                  backgroundColor: Colors.white,
                ),
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 6,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              CustomButton(
                text: '로그인',
                backgroundColor: Colors.white,
                onPressed: () async {
                  // final data = await _signaturePadKey.currentState!
                  //     .toImage(pixelRatio: 3.0);
                  // final bytes =
                  //     await data.toByteData(format: ImageByteFormat.png);
                  // final image = bytes!.buffer.asUint8List();

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
      ),
    );
  }
}
