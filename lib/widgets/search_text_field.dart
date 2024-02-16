import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;

  const SearchTextField({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: context.localization.searchProtein,
        hintStyle: AppTextStyles.hintTextFieldStyle,
        fillColor: const Color(0xFF979797),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(
          Icons.settings_overscan,
        ),
      ),
    );
  }
}
