import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final String? bottomText;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.bottomText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final bottomLabel = bottomText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.labelTextFieldStyle,
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
            hintStyle: AppTextStyles.hintTextFieldStyle,
          ),
        ),
        if (bottomLabel != null) ...[
          const SizedBox(height: 8),
          Text(
            bottomLabel,
            style: AppTextStyles.bottomTextFieldStyle,
          ),
        ],
      ],
    );
  }
}
