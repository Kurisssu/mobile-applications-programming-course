import 'package:flutter/material.dart' hide VerticalDivider;
import 'expert_info_card.dart';
import 'vertical_divider.dart';
import 'expert_profile_header_item.dart';

class ExpertProfile extends StatelessWidget {
  const ExpertProfile({super.key, required this.item});

  final ExpertProfileHeaderItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 46,
                backgroundImage: item.profileImage,
              ),
              const SizedBox(width: 22),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      item.speciality,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      item.qualification,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/star_full.svg",
                  value: item.rating.toStringAsFixed(1),
                  label: "Rating & Review",
                ),
              ),
              const VerticalDivider(),
              const SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/case.svg",
                  value: item.yearsOfExperience.toString(),
                  label: "Years of work",
                ),
              ),
              const VerticalDivider(),
              const SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/people.svg",
                  value: item.patientsTreated.toString(),
                  label: "No. of patients",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
