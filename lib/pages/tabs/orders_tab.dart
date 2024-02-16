import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';
import 'package:marketplace/widgets/product_card.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.discountAndOffers,
          style: AppTextStyles.cartTitleTextStyle,
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) => const ProductCard(
              title: 'Beta Alanine Xplode',
              subtitle: 'Mass gainer 400g',
              price: 39.45,
              image:
                  'https://e7.pngegg.com/pngimages/154/654/png-clipart-dietary-supplement-whey-protein-isolate-bodybuilding-supplement-bodybuilding-physical-fitness-nutrition.png',
            ),
          ),
        )
      ],
    );
  }
}
