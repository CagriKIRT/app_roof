import 'package:core/style/core_color_style.dart';
import 'package:flutter/material.dart';

import '../style/core_text.dart';
import '../style/core_typography.dart';

class TagView extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String text;

  TagView({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final selectedColor = CoreColors.blue;
  final unselectedColor = Color(0xFFEEEDF2);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : unselectedColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: CoreText(
          text,
          typography: CoreTypography.labelMedium,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
