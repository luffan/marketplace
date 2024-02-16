import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';

class LargeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final String image;

  const LargeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.largeCardTitleTextStyle,
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                style: AppTextStyles.largeCardSubtitleTextStyle,
              ),
            ],
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}
