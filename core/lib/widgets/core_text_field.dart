import 'package:flutter/material.dart';

enum CoreTextFieldType { outlined, filled, underlined, none }

class CoreTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final EdgeInsets? innerPadding;
  final InputDecoration? decoration;
  final void Function(String)? onChanged;
  final int? maxLetter;
  final TextAlign textAlign;
  final CoreTextFieldType type;
  final BorderSide? borderSide;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextStyle? labelStyle;

  const CoreTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.height,
    this.width,
    this.textStyle,
    this.innerPadding,
    this.maxLetter = 75,
    this.labelText,
    this.decoration,
    this.textAlign = TextAlign.start,
    this.type = CoreTextFieldType.outlined,
    this.borderSide,
    this.onChanged,
    this.maxLines,
    this.focusNode,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
          focusNode: focusNode,
          onChanged: onChanged,
          textAlign: textAlign,
          maxLength: maxLetter,
          maxLines: maxLines,
          keyboardType: keyboardType,
          controller: controller,
          decoration: decoration ??
              InputDecoration(
                contentPadding: innerPadding,
                counterText: "",
                hintText: hintText,
                labelText: labelText,
                focusedBorder: inputBorder,
                enabledBorder: inputBorder,
                labelStyle: labelStyle,
              ),
          style: textStyle),
    );
  }

  InputBorder get inputBorder {
    switch (type) {
      case CoreTextFieldType.outlined:
        return outlinedBorder;
      case CoreTextFieldType.filled:
        return filledBorder;
      case CoreTextFieldType.underlined:
        return underlinedBorder;
      default:
        return InputBorder.none;
    }
  }

  OutlineInputBorder get outlinedBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:
          borderSide ?? BorderSide(color: Colors.black.withOpacity(0.5)),
    );
  }

  UnderlineInputBorder get underlinedBorder {
    return UnderlineInputBorder(
      borderSide: borderSide ?? BorderSide(color: Colors.black),
    );
  }

  InputBorder get filledBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: borderSide ?? BorderSide(color: Colors.black),
    );
  }
}
