import 'package:flutter/material.dart';

class MiniCompartmentCard extends StatelessWidget {
  final String title;
  final ImageProvider image;
  final double width;
  final double height;

  const MiniCompartmentCard({
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
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: image, fit: BoxFit.cover),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(7)),
          ),
          child: Text(
            title,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}