import 'package:flutter/material.dart' hide VerticalDivider;
import 'expert_info_card.dart';
import 'vertical_divider.dart';

class ExpertProfile extends StatelessWidget {
  const ExpertProfile({super.key});

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
              const CircleAvatar(
                radius: 46,
                backgroundImage: AssetImage("assets/images/top_expert.png"),
              ),
              const SizedBox(width: 22),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Dr. Emma Kathrin",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Cardiologist",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "MBBS",
                      style: TextStyle(
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
            children: const [
              SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/star_full.svg",
                  value: "4.3",
                  label: "Rating & Review",
                ),
              ),
              VerticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/case.svg",
                  value: "14",
                  label: "Years of work",
                ),
              ),
              VerticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: ExpertInfoCard(
                  iconPath: "assets/icons/people.svg",
                  value: "125",
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
