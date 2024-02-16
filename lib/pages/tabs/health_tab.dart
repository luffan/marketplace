import 'package:flutter/material.dart';
import 'package:marketplace/resources/app_asset_image.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/widgets/search_text_field.dart';
import 'package:marketplace/widgets/small_card.dart';

class HealthTab extends StatelessWidget {
  const HealthTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const SearchTextField(),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: SmallCard(
                  title: 'Shop Quality\nSupplements Now',
                  titleStyle: AppTextStyles.smallCardTextStyle.copyWith(
                    color: const Color(0xFF89463F),
                  ),
                  backgroundColor: const Color(0xFFFDF4F1),
                  image: AppAssetImage.protein,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SmallCard(
                  title: 'Shop Quality Gym\nApparels Now',
                  titleStyle: AppTextStyles.smallCardTextStyle.copyWith(
                    color: const Color(0xFFFFFFFF),
                  ),
                  backgroundColor: const Color(0xFF5DCC9D),
                  image: AppAssetImage.protein,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
