import 'package:flutter/material.dart';
import 'large_compartment_card.dart';
import 'mini_compartment_card.dart';
import 'compartment_list_item.dart';

class CompartmentsInfo extends StatelessWidget {
  const CompartmentsInfo({super.key, required this.item});

  final CompartmentListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item.topItems.map((comp) {
              return LargeCompartmentCard(
                title: comp.title,
                image: comp.image,
                width: comp.width,
                height: comp.height,
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item.bottomItems.map((comp) {
              return MiniCompartmentCard(
                title: comp.title,
                image: comp.image,
                width: comp.width,
                height: comp.height,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}