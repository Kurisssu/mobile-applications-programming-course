import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityItem extends StatelessWidget {
  final String iconPath;
  final String label;

  const SpecialityItem({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
          width: 64,
          height: 64,
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