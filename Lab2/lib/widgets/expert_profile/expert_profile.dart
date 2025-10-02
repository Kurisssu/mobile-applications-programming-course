import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpertProfile extends StatelessWidget {
  const ExpertProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
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

          /// Row cu info, aliniate la stânga
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(width: 15),
              Expanded(
                child: _InfoCard(
                  iconPath: "assets/icons/star_full.svg",
                  value: "4.3",
                  label: "Rating & Review",
                ),
              ),
              _VerticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: _InfoCard(
                  iconPath: "assets/icons/case.svg",
                  value: "14",
                  label: "Years of work",
                ),
              ),
              _VerticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: _InfoCard(
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

/// Widget pentru fiecare secțiune (SVG + valoare)
class _InfoCard extends StatelessWidget {
  final String iconPath;
  final String value;
  final String label;

  const _InfoCard({
    required this.iconPath,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 6),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}