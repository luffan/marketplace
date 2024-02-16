import 'package:flutter/material.dart';
import 'package:marketplace/resources/app_asset_image.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/widgets/large_card.dart';
import 'package:marketplace/widgets/search_text_field.dart';
import 'package:marketplace/widgets/small_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const SearchTextField(),
          const SizedBox(height: 24),
          const LargeCard(
            title: 'Consult Dietitians',
            subtitle: 'Expert nutrition guidance\n& personalized plans',
            backgroundColor: Color(0xFF138E38),
            image: AppAssetImage.preview,
          ),
          const SizedBox(height: 12),
          const LargeCard(
            title: 'Consult Dietitians',
            subtitle: 'Expert nutrition guidance\n& personalized plans',
            backgroundColor: Color(0xFF138E38),
            image: AppAssetImage.preview,
          ),
          const SizedBox(height: 12),
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
