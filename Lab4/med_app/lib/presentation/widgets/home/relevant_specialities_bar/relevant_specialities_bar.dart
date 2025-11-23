import 'package:flutter/material.dart';
import 'relevant_speciality_item.dart';
import 'relevant_specialities_list_item.dart';

class RelevantSpecialitiesBar extends StatelessWidget {
  const RelevantSpecialitiesBar({super.key, required this.item});

  final RelevantSpecialitiesListItem item;

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
            children: item.items.map((spec) {
              return Padding(
                padding: const EdgeInsets.only(right: 22),
                child: SpecialityItem(
                  icon: spec.icon,
                  label: spec.label,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}