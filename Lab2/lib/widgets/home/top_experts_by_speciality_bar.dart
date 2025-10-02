import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopExpertsBySpecialityBar extends StatelessWidget {
  const TopExpertsBySpecialityBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> row_1 = [
      {"icon": "assets/icons/eye.svg", "label": "Eye Specialist"},
      {"icon": "assets/icons/tooth.svg", "label": "Dentist"},
      {"icon": "assets/icons/child.svg", "label": "Child Specialist"},
      {"icon": "assets/icons/skin.svg", "label": "Skin Specialist"},
    ];
    final List<Map<String, String>> row_2 = [
      {"icon": "assets/icons/bone.svg", "label": "Physiotherapy"},
      {"icon": "assets/icons/heart.svg", "label": "Cardiologist"},
      {"icon": "assets/icons/lungs.svg", "label": "Pulmonologist"},
      {"icon": "assets/icons/vegetables.svg", "label": "Nutritionists"},
    ];

    // --- constant values for consistent layout
    const double iconSize = 70;
    const double verticalSpacing = 9;
    const double textHeight = 34; // enough for 2 lines
    const double itemWidth = 80;
    final double itemHeight = iconSize + verticalSpacing + textHeight; // total height for one item

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Decorated Doctors',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(44, 28),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Row(
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF4C9F9F),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color(0xFF4C9F9F),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),

        // FIRST ROW: wrapped in SizedBox with fixed height
        SizedBox(
          height: itemHeight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // align top so icons are lined up
              children: row_1.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: SpecialityItem(
                    iconPath: item["icon"]!,
                    label: item["label"]!,
                    iconSize: iconSize,
                    textHeight: textHeight,
                    width: itemWidth,
                    verticalSpacing: verticalSpacing,
                  ),
                );
              }).toList(),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // SECOND ROW: same fixed height -> aligns perfectly under first row
        SizedBox(
          height: itemHeight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: row_2.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: SpecialityItem(
                    iconPath: item["icon"]!,
                    label: item["label"]!,
                    iconSize: iconSize,
                    textHeight: textHeight,
                    width: itemWidth,
                    verticalSpacing: verticalSpacing,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

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
      // height is controlled by parent SizedBox (keeps rows same height)
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: iconSize,
            height: iconSize,
          ),
          SizedBox(height: verticalSpacing),
          // fixed-height box for text so every item occupies same vertical space
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