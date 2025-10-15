import 'package:flutter/material.dart';
import 'relevant_speciality_item.dart';
import 'relevant_specialities_data.dart';

class RelevantSpecialitiesBar extends StatelessWidget {
  const RelevantSpecialitiesBar({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: specialities.map((item) {
              return Padding(
                padding: const EdgeInsets.only(right: 22),
                child: SpecialityItem(
                  iconPath: item.icon,
                  label: item.label,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}