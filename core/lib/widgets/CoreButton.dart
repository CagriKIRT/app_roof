import 'package:flutter/material.dart';

class CoreButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final double width;
  final double height;
  final VoidCallback onTap;
  final double fontSize;
  final Color textColor;

  CoreButton(
      {Key? key,
      required this.buttonText,
      this.backgroundColor = const Color(0xffFC6B68),
      required this.onTap,
      this.fontSize = 20,
      this.textColor = Colors.white,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(15)),
      width: width,
      height: height,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
