import 'package:flutter/material.dart';
import 'speciality_item.dart';
import 'speciality_data.dart';
import 'top_experts_by_speciality_list_item.dart';

class TopExpertsBySpecialityBar extends StatelessWidget {
  const TopExpertsBySpecialityBar({super.key, required this.item});

  final TopExpertsBySpecialityListItem item;

  @override
  Widget build(BuildContext context) {
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
        _buildRow(item.row1),
        const SizedBox(height: 20),
        _buildRow(item.row2),
      ],
    );
  }

  Widget _buildRow(List<Map<String, String>> row) {
    return SizedBox(
      height: specialityItemHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: row.map((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 22),
              child: SpecialityItem(
                iconPath: item["icon"]!,
                label: item["label"]!,
                iconSize: specialityIconSize,
                textHeight: specialityTextHeight,
                width: specialityItemWidth,
                verticalSpacing: specialityVerticalSpacing,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}