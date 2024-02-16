import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final Color backgroundColor;
  final String image;

  const SmallCard({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.backgroundColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, top: 8),
          height: 120,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: backgroundColor,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(backgroundColor, BlendMode.color),
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
