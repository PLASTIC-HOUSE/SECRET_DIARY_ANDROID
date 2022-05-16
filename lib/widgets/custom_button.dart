import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color textColor;
  final double textSize;
  final Color backgroundColor;
  final BorderSide borderSide;
  final Alignment align;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 350,
    this.height = 60,
    this.textColor = Colors.black,
    this.textSize = 25,
    this.backgroundColor = const Color(0xFFFEE3D9),
    this.borderSide = BorderSide.none,
    this.align = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: Container(
        width: width,
        height: height,
        child: RaisedButton(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: textSize),
          ),
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: borderSide,
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
