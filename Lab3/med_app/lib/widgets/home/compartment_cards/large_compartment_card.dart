import 'package:flutter/material.dart';

class LargeCompartmentCard extends StatelessWidget {
  final String title;
  final ImageProvider image;
  final double width;
  final double height;

  const LargeCompartmentCard({
    super.key,
    required this.title,
    required this.image,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
          child: Text(
            title,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}