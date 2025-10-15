import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final double iconSize;
  final double textHeight;
  final double width;
  final double verticalSpacing;

  const SpecialityItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.iconSize,
    required this.textHeight,
    required this.width,
    required this.verticalSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: iconSize,
            height: iconSize,
          ),
          SizedBox(height: verticalSpacing),
          SizedBox(
            height: textHeight,
            child: Text(
              label.replaceAll(' ', '\n'),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}