import 'package:flutter/material.dart';

class FeaturedServiceCard extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const FeaturedServiceCard({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: width,
        height: height,
        color: Colors.grey.shade200,
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}