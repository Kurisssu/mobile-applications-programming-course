import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialitiesBar extends StatelessWidget {
  const SpecialitiesBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {"icon": "assets/icons/eye.svg", "label": "Eye Specialist"},
      {"icon": "assets/icons/tooth.svg", "label": "Dentist"},
      {"icon": "assets/icons/heart.svg", "label": "Cardiologist"},
      {"icon": "assets/icons/lungs.svg", "label": "Pulmonologist"},
      {"icon": "assets/icons/bone.svg", "label": "Physiotherapy"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Specialities most relevant to you",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: items.map((item) {
              return Padding(padding: const EdgeInsets.only(right: 22),
                child: SpecialityItem(
                  iconPath: item["icon"]!,
                  label: item["label"]!,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

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