import 'package:flutter/material.dart';
import 'large_compartment_card.dart';
import 'mini_compartment_card.dart';
import 'compartments_data.dart';

class CompartmentsInfo extends StatelessWidget {
  const CompartmentsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: topRowItems.map((item) {
              return LargeCompartmentCard(
                title: item.title,
                imagePath: item.imagePath,
                width: item.width,
                height: item.height,
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: bottomRowItems.map((item) {
              return MiniCompartmentCard(
                title: item.title,
                imagePath: item.imagePath,
                width: item.width,
                height: item.height,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}