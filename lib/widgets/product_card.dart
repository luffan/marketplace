import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;
  final String image;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(image, height: 120),
          const SizedBox(height: 12),
          Text(
            title,
            style: AppTextStyles.productCardTitleTextStyle,
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: AppTextStyles.productCardSubtitleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            '\$$price',
            style: AppTextStyles.productCardPriceTextStyle,
          )
        ],
      ),
    );
  }
}
