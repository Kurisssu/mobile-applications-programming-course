import 'package:flutter/material.dart';
import 'expert_location_data.dart';
import 'location_card.dart';

class ExpertLocation extends StatefulWidget {
  const ExpertLocation({super.key});

  @override
  State<ExpertLocation> createState() => _ExpertLocationState();
}

class _ExpertLocationState extends State<ExpertLocation> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12, left: 16),
          child: Text(
            'Location',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(
          height: 95,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: locations.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final item = locations[index];
              final isSelected = selectedIndex == index;

              return LocationCard(
                location: item,
                isSelected: isSelected,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}