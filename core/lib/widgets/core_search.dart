import 'package:flutter/material.dart';
import 'package:core/extension/context_extension.dart';

import '../style/core_text.dart';
import '../style/core_typography.dart';

class CoreSearch extends StatefulWidget {
  final TextEditingController? controller;

  final VoidCallback? onClosePressed;
  final void Function(String)? onChanged;

  const CoreSearch(
      {super.key,
      required this.controller,
      required this.onClosePressed,
      this.onChanged});

  @override
  State<CoreSearch> createState() => _CoreSearchState();
}

class _CoreSearchState extends State<CoreSearch> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      style: CoreTextStyle().getStyle(typography: CoreTypography.bodyMedium),
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            context.unFocus();
            widget.controller?.clear();
            widget.onClosePressed?.call();
          },
        ),
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
