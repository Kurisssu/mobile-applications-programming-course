import 'package:flutter/material.dart';

class SpecialityItem extends StatelessWidget {
  final ImageProvider icon;
  final String label;

  const SpecialityItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            image: DecorationImage(image: icon, fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 9),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}